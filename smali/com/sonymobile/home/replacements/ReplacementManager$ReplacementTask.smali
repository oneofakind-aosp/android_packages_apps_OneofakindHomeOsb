.class Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;
.super Ljava/lang/Object;
.source "ReplacementManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/replacements/ReplacementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplacementTask"
.end annotation


# instance fields
.field private final mListener:Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;

.field private final mOldItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mResId:I

.field final synthetic this$0:Lcom/sonymobile/home/replacements/ReplacementManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/replacements/ReplacementManager;Ljava/util/List;ILcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;)V
    .locals 0
    .param p3, "resId"    # I
    .param p4, "listener"    # Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I",
            "Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "oldItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iput-object p1, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->this$0:Lcom/sonymobile/home/replacements/ReplacementManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->mOldItems:Ljava/util/List;

    .line 107
    iput p3, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->mResId:I

    .line 108
    iput-object p4, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->mListener:Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;

    .line 109
    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->notifyListener(Ljava/util/List;)V

    return-void
.end method

.method private notifyListener(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "replacingItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->mListener:Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->mListener:Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementListener;->onReplacingItemsFound(Ljava/util/List;)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 118
    .local v2, "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;>;"
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->this$0:Lcom/sonymobile/home/replacements/ReplacementManager;

    # getter for: Lcom/sonymobile/home/replacements/ReplacementManager;->mParser:Lcom/sonymobile/home/replacements/ReplacementsXmlParser;
    invoke-static {v3}, Lcom/sonymobile/home/replacements/ReplacementManager;->access$000(Lcom/sonymobile/home/replacements/ReplacementManager;)Lcom/sonymobile/home/replacements/ReplacementsXmlParser;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->mOldItems:Ljava/util/List;

    iget v5, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->mResId:I

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/replacements/ReplacementsXmlParser;->parseReplacementsFromXML(Ljava/util/List;I)Ljava/util/Map;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 123
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->this$0:Lcom/sonymobile/home/replacements/ReplacementManager;

    invoke-virtual {v3, v2}, Lcom/sonymobile/home/replacements/ReplacementManager;->getNewItemsFromReplacementMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->this$0:Lcom/sonymobile/home/replacements/ReplacementManager;

    # getter for: Lcom/sonymobile/home/replacements/ReplacementManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/home/replacements/ReplacementManager;->access$300(Lcom/sonymobile/home/replacements/ReplacementManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask$1;

    invoke-direct {v4, p0, v1}, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask$1;-><init>(Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 143
    .end local v1    # "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :cond_1
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    # getter for: Lcom/sonymobile/home/replacements/ReplacementManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/replacements/ReplacementManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to parse replacement XML file "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
