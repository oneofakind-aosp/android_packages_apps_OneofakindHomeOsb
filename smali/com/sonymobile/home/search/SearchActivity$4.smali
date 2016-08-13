.class Lcom/sonymobile/home/search/SearchActivity$4;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/sonymobile/home/search/SearchRecyclerView$SearchRecyclerViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchActivity$4;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchSuggestionItemKeyEnterEvent(I)V
    .locals 2
    .param p1, "searchSuggestionId"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$4;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    const-string v1, "com.sonymobile.home.search.intent.action.LAUNCH_ITEM"

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->handleClickEvent(ILjava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/sonymobile/home/search/SearchActivity;->access$1000(Lcom/sonymobile/home/search/SearchActivity;ILjava/lang/String;)V

    .line 260
    return-void
.end method

.method public onSearchSuggestionItemKeyEnterEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "queryPath"    # Ljava/lang/String;
    .param p2, "genre"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$4;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/search/SearchActivity;->onSuggestionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public onSelectedPositionChanged(I)V
    .locals 2
    .param p1, "selectedPosition"    # I

    .prologue
    .line 269
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity$4;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mSearchGridView:Lcom/sonymobile/home/search/SearchRecyclerView;
    invoke-static {v1}, Lcom/sonymobile/home/search/SearchActivity;->access$1100(Lcom/sonymobile/home/search/SearchActivity;)Lcom/sonymobile/home/search/SearchRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/search/SearchRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 270
    .local v0, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchActivity$4;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->getCurrentSearchAdapter()Lcom/sonymobile/home/search/SearchAdapter;
    invoke-static {v1}, Lcom/sonymobile/home/search/SearchActivity;->access$700(Lcom/sonymobile/home/search/SearchActivity;)Lcom/sonymobile/home/search/SearchAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/sonymobile/home/search/SearchAdapter;->setSelectedPosition(ILandroid/support/v7/widget/GridLayoutManager;)V

    .line 271
    return-void
.end method
