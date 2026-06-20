# 🏫 校园闲置物品交易平台
基于 Spring Boot + Vue 的前后端分离校园闲置物品交易平台，支持多角色权限管理、实时聊天、订单交易与数据可视化。
---
## 📌 项目简介
本项目旨在解决高校校园内闲置物品信息分散、交易安全不足、沟通效率低等问题，提供一个规范、安全、高效的校园闲置物品交易平台。
> 支持商品发布、浏览搜索、收藏管理、订单交易、实时聊天、后台管理、数据统计等核心功能。
---
## 🧱 技术栈
| 层级 | 技术 | 版本 |
|------|------|------|
| 后端框架 | Spring Boot | 3.x |
| ORM 框架 | MyBatis-Plus | 3.5.5+ |
| 权限认证 | JWT | — |
| 实时通信 | Java WebSocket | — |
| 数据库 | MySQL | 8.0+ |
| 前端框架 | Vue 3 + Composition API | 3.x |
| UI 组件库 | Element Plus | 2.x |
| 图表库 | ECharts | 5.4.3 |
| 构建工具 | Maven / npm | — |
---
## ✨ 核心功能
### 用户前台
- ✅ 登录注册（JWT 无状态认证，多角色独立登录）
- ✅ 商品发布、编辑、下架
- ✅ 商品浏览与搜索（分类筛选、关键词搜索、价格排序）
- ✅ 商品详情（浏览量自增、收藏状态显示）
- ✅ 收藏管理（一键收藏/取消）
- ✅ 收货地址管理（下单时自动快照）
- ✅ 订单管理（下单、取消、确认收货）
- ✅ 实时聊天（文字/图片消息、在线状态、未读计数、历史记录）
### 管理员后台
- ✅ 公告管理
- ✅ 轮播图管理
- ✅ 商品分类管理
- ✅ 闲置商品管理
- ✅ 用户管理
- ✅ 订单管理
- ✅ 数据统计（ECharts 饼图）
## 🚀 快速开始
### 环境要求
- Java 17+
- Node.js 24+
- MySQL 8.0+
- Maven 3.8.1+
##项目结构
campus-idle-trading/
├── backend/
│   ├── src/main/java/com/example/springboot/
│   │   ├── common/          # 通用类（Result、WebSocketServer）
│   │   ├── config/          # 配置（跨域、拦截器、WebSocket）
│   │   ├── controller/      # 控制器
│   │   ├── entity/          # 实体类
│   │   ├── mapper/          # 数据访问层
│   │   ├── service/         # 服务层
│   │   ├── utils/           # 工具类
│   │   └── exception/       # 异常处理
│   └── src/main/resources/application.yml
├── frontend/
│   ├── src/
│   │   ├── views/           # 页面组件
│   │   ├── router/          # 路由配置
│   │   ├── store/           # Pinia 状态管理
│   │   └── utils/axios.js   # HTTP 封装
├── sql/                     # 数据库脚本
├── files/                   # 上传文件目录
└── README.md
