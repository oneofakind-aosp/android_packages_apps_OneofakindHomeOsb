.class Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask$1;
.super Ljava/lang/Object;
.source "ReplacementManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;

.field final synthetic val$newItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask$1;->this$1:Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;

    iput-object p2, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask$1;->val$newItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask$1;->this$1:Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;

    iget-object v1, v1, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->this$0:Lcom/sonymobile/home/replacements/ReplacementManager;

    iget-object v2, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask$1;->val$newItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/replacements/ReplacementManager;->validateItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "replacingItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    iget-object v1, p0, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask$1;->this$1:Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;

    # invokes: Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->notifyListener(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;->access$200(Lcom/sonymobile/home/replacements/ReplacementManager$ReplacementTask;Ljava/util/List;)V

    .line 137
    return-void
.end method
