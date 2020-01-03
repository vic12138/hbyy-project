import request from '@/utils/request'

// 查询字母表列表
export function listLetter(query) {
  return request({
    url: '/letter/list',
    method: 'get',
    params: query
  })
}

// 查询字母表详细
export function getLetter(id) {
  return request({
    url: '/letter/' + id,
    method: 'get'
  })
}

// 新增字母表
export function addLetter(data) {
  return request({
    url: '/letter',
    method: 'post',
    data: data
  })
}

// 修改字母表
export function updateLetter(data) {
  return request({
    url: '/letter',
    method: 'put',
    data: data
  })
}

// 删除字母表
export function delLetter(id) {
  return request({
    url: '/letter/' + id,
    method: 'delete'
  })
}

// 导出字母表
export function exportLetter(query) {
  return request({
    url: '/letter/export',
    method: 'get',
    params: query
  })
}

// 查询字母表列表(不分页)
export function getLetterList() {
  return request({
    url: '/letter/getLetterList',
    method: 'get'
  })
}
