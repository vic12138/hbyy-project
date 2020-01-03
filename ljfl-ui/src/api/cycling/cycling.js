import request from '@/utils/request'

// 查询回收站管理列表
export function listCycling(query) {
  return request({
    url: '/cycling/list',
    method: 'get',
    params: query
  })
}

// 查询回收站管理详细
export function getCycling(id) {
  return request({
    url: '/cycling/' + id,
    method: 'get'
  })
}

// 新增回收站管理
export function addCycling(data) {
  return request({
    url: '/cycling',
    method: 'post',
    data: data
  })
}

// 修改回收站管理
export function updateCycling(data) {
  return request({
    url: '/cycling',
    method: 'put',
    data: data
  })
}

// 删除回收站管理
export function delCycling(id) {
  return request({
    url: '/cycling/' + id,
    method: 'delete'
  })
}

// 导出回收站管理
export function exportCycling(query) {
  return request({
    url: '/cycling/export',
    method: 'get',
    params: query
  })
}
