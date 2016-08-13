.class Lcom/sonymobile/home/model/ResourceHandler$5;
.super Ljava/lang/Object;
.source "ResourceHandler.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceCache$IteratorAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/ResourceHandler;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/ResourceHandler;

.field final synthetic val$unavailablePackages:[Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/ResourceHandler;Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lcom/sonymobile/home/model/ResourceHandler$5;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    iput-object p2, p0, Lcom/sonymobile/home/model/ResourceHandler$5;->val$user:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/sonymobile/home/model/ResourceHandler$5;->val$unavailablePackages:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeAction(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceCacheItem;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "cacheItem"    # Lcom/sonymobile/home/model/ResourceCacheItem;

    .prologue
    .line 932
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler$5;->val$user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler$5;->val$unavailablePackages:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/home/util/HomeUtils;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    iget-object v2, p0, Lcom/sonymobile/home/model/ResourceHandler$5;->this$0:Lcom/sonymobile/home/model/ResourceHandler;

    # getter for: Lcom/sonymobile/home/model/ResourceHandler;->mLoaderFactory:Lcom/sonymobile/home/model/ResourceLoaderFactory;
    invoke-static {v2}, Lcom/sonymobile/home/model/ResourceHandler;->access$300(Lcom/sonymobile/home/model/ResourceHandler;)Lcom/sonymobile/home/model/ResourceLoaderFactory;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/home/model/ResourceLoaderFactory;->getResourceLoader(Ljava/lang/Class;)Lcom/sonymobile/home/model/ResourceLoader;

    move-result-object v0

    .line 935
    .local v0, "loader":Lcom/sonymobile/home/model/ResourceLoader;
    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p2}, Lcom/sonymobile/home/model/ResourceCacheItem;->getResource()Lcom/sonymobile/home/model/ResourceItem;

    move-result-object v1

    .line 937
    .local v1, "resource":Lcom/sonymobile/home/model/ResourceItem;
    invoke-interface {v0, v1}, Lcom/sonymobile/home/model/ResourceLoader;->resourceUnavailable(Lcom/sonymobile/home/model/ResourceItem;)V

    .line 940
    .end local v0    # "loader":Lcom/sonymobile/home/model/ResourceLoader;
    .end local v1    # "resource":Lcom/sonymobile/home/model/ResourceItem;
    :cond_0
    return-void
.end method
