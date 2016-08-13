.class Lcom/sonymobile/home/search/SearchablePageViewPresenter$1;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
.source "SearchablePageViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SearchablePageViewPresenter;->openFolder(Lcom/sonymobile/home/data/FolderItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/SearchablePageViewPresenter;

.field final synthetic val$item:Lcom/sonymobile/home/data/FolderItem;

.field final synthetic val$targetPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/SearchablePageViewPresenter;Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$1;->this$0:Lcom/sonymobile/home/search/SearchablePageViewPresenter;

    iput-object p2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$1;->val$item:Lcom/sonymobile/home/data/FolderItem;

    iput-object p3, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$1;->val$targetPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 3
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$1;->this$0:Lcom/sonymobile/home/search/SearchablePageViewPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$1;->val$item:Lcom/sonymobile/home/data/FolderItem;

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$1;->val$targetPageViewGroup:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    # invokes: Lcom/sonymobile/home/search/SearchablePageViewPresenter;->openFolderOnCurrentPage(Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->access$000(Lcom/sonymobile/home/search/SearchablePageViewPresenter;Lcom/sonymobile/home/data/FolderItem;Lcom/sonymobile/home/ui/pageview/PageViewGroup;)V

    .line 273
    return-void
.end method
