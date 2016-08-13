.class public final Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;
.super Ljava/lang/Object;
.source "PageItemViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;
    }
.end annotation


# static fields
.field private static sFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;


# instance fields
.field private final mCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->sFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->mCreators:Ljava/util/Map;

    .line 71
    return-void
.end method

.method public static getFactory()Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->sFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    invoke-direct {v0}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;-><init>()V

    sput-object v0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->sFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    .line 82
    :cond_0
    sget-object v0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->sFactory:Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;

    return-object v0
.end method


# virtual methods
.method public createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->mCreators:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;

    .line 131
    .local v0, "viewCreator":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;->createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;

    move-result-object v1

    .line 134
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerItemViewCreator(Ljava/lang/Class;Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;)V
    .locals 2
    .param p2, "itemViewCreator"    # Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->mCreators:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;

    .line 94
    .local v0, "oldItemViewCreator":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;->onDestroy()V

    .line 97
    :cond_0
    return-void
.end method

.method public unregisterAllItemViewCreators()V
    .locals 3

    .prologue
    .line 115
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->mCreators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;

    .line 116
    .local v1, "itemViewCreator":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;
    invoke-interface {v1}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;->onDestroy()V

    goto :goto_0

    .line 118
    .end local v1    # "itemViewCreator":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->mCreators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 119
    return-void
.end method

.method public unregisterItemViewCreator(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->mCreators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;

    .line 106
    .local v0, "itemViewCreator":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;->onDestroy()V

    .line 109
    :cond_0
    return-void
.end method

.method public updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V
    .locals 4
    .param p1, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;

    .prologue
    .line 159
    iget-object v3, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->mCreators:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 160
    .local v2, "viewCreators":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;

    .line 161
    .local v0, "creator":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;
    invoke-interface {v0, p1}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;->updateConfiguration(Lcom/sonymobile/home/resources/ResourceManager;)V

    goto :goto_0

    .line 163
    .end local v0    # "creator":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;
    :cond_0
    return-void
.end method

.method public updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 3
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory;->mCreators:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;

    .line 148
    .local v0, "viewCreator":Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p1, p2, p3}, Lcom/sonymobile/home/ui/pageview/PageItemViewFactory$ItemViewCreator;->updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 151
    :cond_0
    return-void
.end method
