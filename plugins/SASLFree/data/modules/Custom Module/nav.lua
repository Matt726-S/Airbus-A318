-- A318 Created by X-Bureau --

position = {10, 100, 522, 522}
size = {522, 522}

-- get datarefs
heading = globalPropertyf("sim/cockpit2/gauges/indicators/heading_electric_deg_mag_pilot")

--fonts
local AirbusFont = sasl.gl.loadFont("fonts/PanelFont.ttf")

--colors
local PFD_GREEN = {0.184, 0.733, 0.219, 1.0}
local PFD_WHITE = {1.0, 1.0, 1.0, 1.0}
local PFD_BLUE = {0.004, 1.0, 1.0, 1.0}
local PFD_GREY = {0.25, 0.26, 0.26, 1.0}

--get images
local nd_overlay = sasl.gl.loadImage("images/Nav_Overlay.png", 0, 0, 2048, 2048)
local miniplane = sasl.gl.loadImage("images/A320-ND-Rose-Airplane-Standalone.png", 0, 0, 160, 160)
local arc = sasl.gl.loadImage("images/ARC_Nav.png", 0, 0, 2048, 2048)
local arcTape = sasl.gl.loadImage("images/ARC_TAPE.png", 0, 0, 3072, 3072)

--custom functions

local function draw_rose_cardinal()
   -- sasl.gl.drawRotatedTextureCenter(arcTape, 0 - get(heading), 600, 600, -350, 0, 800, 800, PFD_WHITE)
end

function draw()
    sasl.gl.drawTexture(nd_overlay, 22, -44, 500, 500)
    sasl.gl.drawTexture(arc, 24, -85, 522, 522)
    sasl.gl.drawTexture(miniplane, 261, 40, 50, 50)
    sasl.gl.resetClipArea()
    draw_rose_cardinal()
    sasl.gl.resetClipArea()

end

