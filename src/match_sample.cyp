// depends on sample data

// MATCH on property
// MATCH WHERE
MATCH (a:Node)
WHERE a.name = 'abc123'
RETURN a;

// MATCH on property abbreviated
MATCH (a:Node {name: 'abc213' })
RETURN a;

// MATCH with RELATIONSHIP to any sort of node irrespective of label
MATCH (a:Node)-[:BELONGS]->(b)
WHERE a.name = 'abc123'
return a,b;

// MATCH with RELATIONSHIP to a specific Node label
MATCH (a:Node)-[:BELONGS]->(b:OtherNode)  // could be Node as well
WHERE a.name = 'abc123'
return a,b;

// now some abbreviated forms
MATCH (a:Node {name: 'abc123')-[:BELONGS]->(b)
return a,b;

// OPTIONAL MATCH fills in nulls
// a:Node.name='abc123',  b.Node.name='def456', b.Node.alias='ghi789'
// should work, even though b has an extra property, whereas MATCH wont
OPTIONAL MATCH (a:Node {name='abc123'})-[:BELONGS]->(b.Node {name='def456'})
return a,b;





