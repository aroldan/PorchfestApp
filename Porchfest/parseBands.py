import json
from bs4 import BeautifulSoup

f = open('porchfest2015.json')
bands = json.load(f)

def data_for_row(row):
  soup = BeautifulSoup(row['t'])
  return {
    "address": soup.select('.street-address')[0].text.strip(),
    "band": soup.select('.views-label-title + .field-content')[0].text,
    "lat": row['lat'],
    "lon": row['lon']
  }

out_json = [data_for_row(r) for r in bands]
print json.dumps({"bands": out_json})