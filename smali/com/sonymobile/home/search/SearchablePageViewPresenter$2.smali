.class Lcom/sonymobile/home/search/SearchablePageViewPresenter$2;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
.source "SearchablePageViewPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SearchablePageViewPresenter;->startJumpAnimation(ILcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/SearchablePageViewPresenter;

.field final synthetic val$folderInWhichItemIsLocated:Lcom/sonymobile/home/data/FolderItem;

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/SearchablePageViewPresenter;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$2;->this$0:Lcom/sonymobile/home/search/SearchablePageViewPresenter;

    iput-object p2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$2;->val$item:Lcom/sonymobile/home/data/Item;

    iput-object p3, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$2;->val$folderInWhichItemIsLocated:Lcom/sonymobile/home/data/FolderItem;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 3
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$2;->this$0:Lcom/sonymobile/home/search/SearchablePageViewPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$2;->val$item:Lcom/sonymobile/home/data/Item;

    iget-object v2, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$2;->val$folderInWhichItemIsLocated:Lcom/sonymobile/home/data/FolderItem;

    # invokes: Lcom/sonymobile/home/search/SearchablePageViewPresenter;->startJumpAnimation(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->access$100(Lcom/sonymobile/home/search/SearchablePageViewPresenter;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V

    .line 329
    return-void
.end method
