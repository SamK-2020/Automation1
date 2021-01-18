import json
import requests
import jsonpath

def api_fun():
    api = "https://jsonplaceholder.typicode.com/todos/1"
    resp = requests.get(api)
    print (resp.text)
    assert resp.status_code == 200
    json_res= json.loads(resp.text)
    print (json_res)


    val = jsonpath.jsonpath(json_res, 'title')
    #id = jsonpath.jsonpath(json_res, "id")

    print (val )
   # print (id)
    #return val
api_fun()