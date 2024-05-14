using api.ClientEventHandlers;
using api.ServerEvents;
using NUnit.Framework;
using Tests;

namespace tests;

[TestFixture]

[NonParallelizable]
public class ApiTests
{
 
    [SetUp]
    public async Task Setup()
    {
        Startup.Start(null);
        Helper.RebuildDatabase();
    }


}