import wx
import wx.grid as gridlib
 
########################################################################
class GridPanel(wx.Panel):
    """"""
 
    #----------------------------------------------------------------------
    def __init__(self, parent):
        """Constructor"""
        wx.Panel.__init__(self, parent=parent)
 
        grid = gridlib.Grid(self)
        grid.CreateGrid(25,12)
 
        sizer = wx.BoxSizer(wx.VERTICAL)
        sizer.Add(grid, 0, wx.EXPAND)
        self.SetSizer(sizer)
 
 
########################################################################
class RandomPanel(wx.Panel):
    """"""
 
    #----------------------------------------------------------------------
    def __init__(self, parent, color):
        """Constructor"""
        wx.Panel.__init__(self, parent)
        self.SetBackgroundColour(color)
 
########################################################################
class MainPanel(wx.Panel):
    """"""
 
    #----------------------------------------------------------------------
    def __init__(self, parent):
        """Constructor"""
        wx.Panel.__init__(self, parent)
 
        topSplitter = wx.SplitterWindow(self)
        vSplitter = wx.SplitterWindow(topSplitter)
        vSplitter2 = wx.SplitterWindow(vSplitter)
 
        panelOne = RandomPanel(vSplitter, "blue")
        panelTwo = RandomPanel(vSplitter, "red")
        panelfour = GridPanel(vSplitter2)
        vSplitter.SplitVertically(panelOne, panelTwo)
        #vSplitter.SplitVertically(vSplitter, panelfour)
        vSplitter.SetSashGravity(0.5)
        vSplitter2.SplitVertically(panelfour)
 
        panelThree = RandomPanel(topSplitter, "green")
        topSplitter.SplitHorizontally(vSplitter2, panelThree)
        topSplitter.SetSashGravity(0.5)
 
        sizer = wx.BoxSizer(wx.VERTICAL)
        sizer.Add(topSplitter, 1, wx.EXPAND)
        self.SetSizer(sizer)
 
########################################################################
class MainFrame(wx.Frame):
    """"""
 
    #----------------------------------------------------------------------
    def __init__(self):
        """Constructor"""
        wx.Frame.__init__(self, None, title="Nested Splitters",
                          size=(800,600))
        panel = MainPanel(self)
        self.Show()
 
#----------------------------------------------------------------------
if __name__ == "__main__":
    app = wx.App(False)
    frame = MainFrame()
    app.MainLoop()