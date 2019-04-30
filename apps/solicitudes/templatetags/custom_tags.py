from django import template
register = template.Library()

@register.simple_tag
def getMonthText(num):
    arr_month = ['ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE']
    return arr_month[int(num)-1]