local sx, sy = guiGetScreenSize()
local shader = dxCreateShader('rectangle.fx')
dxSetShaderValue(shader, 'resolution', {sx, sy})

function drawRectangle(x, y, w, h, settings)
    settings = settings or {}
    local gradient = settings['gradient'] or {}
    local fill = (settings['fill'] and settings['fill']['color']) or {255, 255, 255, 255}
    local border = (settings['border'] and settings['border']['color']) or {0, 0, 0, 0}

    dxSetShaderValue(shader, 'size', w, h)
    dxSetShaderValue(shader, 'fill_color', (fill[1] or 255)/255, (fill[2] or 255)/255, (fill[3] or 255)/255, (fill[4] or 255)/255)
    dxSetShaderValue(shader, 'border_radius', (settings['fill'] and settings['fill']['radius']) or 0)
    dxSetShaderValue(shader, 'border_width', (settings['border'] and settings['border']['size']) or 0)
    dxSetShaderValue(shader, 'border_color', (border[1] or 0)/255, (border[2] or 0)/255, (border[3] or 0)/255, (border[4] or 0)/255)

    dxSetShaderValue(shader, 'gradient_dir', ((tostring(gradient['direction'] or 'left'):lower() == 'top') or (tostring(gradient['direction'] or 'left'):lower() == 'bottom')) and 0 or 1, ((tostring(gradient['direction'] or 'left'):lower() == 'top') or (tostring(gradient['direction'] or 'left'):lower() == 'bottom')) and 1 or 0)
    dxSetShaderValue(shader, 'gradient_flip', ((tostring(gradient['direction'] or 'left'):lower() == 'right') or (tostring(gradient['direction'] or 'left'):lower() == 'bottom')) and 1 or 0)
    dxSetShaderValue(shader, 'gradient_alpha', (gradient['alpha_start'] == nil) and 1 or (gradient['alpha_start'] > 1 and ((gradient['alpha_start'] <= 100) and gradient['alpha_start']/100 or gradient['alpha_start']/255) or gradient['alpha_start']), (gradient['alpha_end'] == nil) and 1 or (gradient['alpha_end'] > 1 and ((gradient['alpha_end'] <= 100) and gradient['alpha_end']/100 or gradient['alpha_end']/255) or gradient['alpha_end']))
    dxSetShaderValue(shader, 'gradient_range', math.max(0, math.min(1, (math.min(gradient['percent_start'] or 100, gradient['percent_end'] or 100)) * 0.01)), math.max(0, math.min(1, (math.max(gradient['percent_start'] or 100, gradient['percent_end'] or 100)) * 0.01)))

    dxDrawImage(math.floor(x - (sx - w) * 0.5), math.floor(y - (sy - h) * 0.5), sx, sy, shader, 0, 0, 0, tocolor(255,255,255), settings['postGUI'] or false)
end

-- TEST 
addEventHandler('onClientRender', root, function ()
    drawRectangle(500, 100, 200, 60, {
        fill = {color = {51, 161, 224, 255}, radius = 6},
        border = {color = {21, 77, 113, 255}, size = 2},
        gradient = {direction = 'left', alpha_start = 100, percent_start = 0, alpha_end = 0, percent_end = 100},
    })
end)
