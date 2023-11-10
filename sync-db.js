let times = 0;

const syncDB = () => {
  times++;
  console.log("running a task every 5 seconds xd - dragon", times);
  return times;
}

module.exports = {
    syncDB
}