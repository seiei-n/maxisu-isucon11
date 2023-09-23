package main

type Inner struct {
	MyGPA float64
	CourseResults []CourseResult
}

type ICache interface {
	Set(key string, val Inner)
	Get(key string) Inner
	Clear()
}

type Cache struct {
	cache map[string]
	callback func() interface{}
}

func NewCache() *Cache {
	return &Cache{
		cache: make(map[string]Inner)
		callback: nil,
	}
}

func (c *Cache) Set(key string, val Inner) {
	c.cache[key] = val
}

func (c *Cache) Get(key string) Inner {
	if val, ok := c.cache[key]; ok {
		return val
	}
	return nil
}

func (c *Cache) Clear() {
	c.cache = make(map[string]Inner)
}