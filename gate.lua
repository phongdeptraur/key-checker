-- gate.lua

-- (1) kiểm tra có KEY chưa
if not getgenv().KEY or getgenv().KEY == "" then
    warn("❌ Chưa set KEY")
    return
end

-- (2) OPTIONAL: nếu bạn muốn, bạn có thể check KEY ở đây
-- hiện tại: chỉ log cho gọn
print("KEY:", getgenv().KEY)

-- (3) tải script chính
local MAIN_URL = "https://raw.githubusercontent.com/phongdeptraur/key-checker/refs/heads/main/KaitunDraco.lua"

local source = game:HttpGet(MAIN_URL)

-- (4) chạy script chính
local fn, err = loadstring(source)
if not fn then
    warn("❌ Lỗi load main.lua:", err)
    return
end

fn()
