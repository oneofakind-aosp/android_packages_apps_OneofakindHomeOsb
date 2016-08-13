.class public Lcom/sonymobile/home/presenter/view/InternalFunctionItemViewCreator;
.super Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;
.source "InternalFunctionItemViewCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/home/presenter/view/InternalFunctionItemViewCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/presenter/view/InternalFunctionItemViewCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V
    .locals 0
    .param p1, "rm"    # Lcom/sonymobile/home/resources/ResourceManager;
    .param p2, "userSettings"    # Lcom/sonymobile/home/settings/UserSettings;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/presenter/view/ItemViewCreatorBase;-><init>(Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/home/settings/UserSettings;)V

    .line 37
    return-void
.end method


# virtual methods
.method public createPageItemView(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/ui/pageview/PageItemViewListener;)Lcom/sonymobile/home/ui/pageview/PageItemView;
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;
    .param p3, "scene"    # Lcom/sonymobile/flix/components/Scene;
    .param p4, "pageItemViewListener"    # Lcom/sonymobile/home/ui/pageview/PageItemViewListener;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "internalFunctionView":Lcom/sonymobile/home/presenter/view/InternalFunctionView;
    if-eqz p2, :cond_0

    .line 55
    new-instance v0, Lcom/sonymobile/home/presenter/view/InternalFunctionView;

    .end local v0    # "internalFunctionView":Lcom/sonymobile/home/presenter/view/InternalFunctionView;
    move-object v1, p1

    check-cast v1, Lcom/sonymobile/home/data/InternalFunctionItem;

    invoke-virtual {p0, p1}, Lcom/sonymobile/home/presenter/view/InternalFunctionItemViewCreator;->includedLabel(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    invoke-direct {v0, p3, v1, v2, p4}, Lcom/sonymobile/home/presenter/view/InternalFunctionView;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/data/InternalFunctionItem;ZLcom/sonymobile/home/ui/pageview/PageItemViewListener;)V

    .line 57
    .restart local v0    # "internalFunctionView":Lcom/sonymobile/home/presenter/view/InternalFunctionView;
    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/home/presenter/view/InternalFunctionItemViewCreator;->updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V

    .line 59
    :cond_0
    return-object v0
.end method

.method public updatePageItemView(Lcom/sonymobile/home/ui/pageview/PageItemView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;)V
    .locals 6
    .param p1, "pageItemView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "resourceItem"    # Lcom/sonymobile/home/model/ResourceItem;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    move-object v1, p3

    .line 69
    check-cast v1, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;

    .local v1, "internalFunctionResource":Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;
    move-object v2, p1

    .line 71
    check-cast v2, Lcom/sonymobile/home/presenter/view/IconLabelView;

    .line 72
    .local v2, "view":Lcom/sonymobile/home/presenter/view/IconLabelView;
    invoke-virtual {v1}, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v2, p2, p3, v0}, Lcom/sonymobile/home/presenter/view/InternalFunctionItemViewCreator;->updateIconLabelView(Lcom/sonymobile/home/presenter/view/IconLabelView;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/ResourceItem;Landroid/graphics/Bitmap;)V

    .line 74
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/home/presenter/view/InternalFunctionItemViewCreator;->updateViewParameters(Ljava/lang/String;Lcom/sonymobile/home/presenter/view/IconLabelView;)V

    .line 79
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "internalFunctionResource":Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;
    .end local v2    # "view":Lcom/sonymobile/home/presenter/view/IconLabelView;
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v3, Lcom/sonymobile/home/presenter/view/InternalFunctionItemViewCreator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating InternalFunctionView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with resource item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
