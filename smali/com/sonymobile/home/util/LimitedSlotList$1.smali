.class Lcom/sonymobile/home/util/LimitedSlotList$1;
.super Ljava/lang/Object;
.source "LimitedSlotList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/util/LimitedSlotList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/home/util/LimitedSlotList;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/util/LimitedSlotList;)V
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList$1;, "Lcom/sonymobile/home/util/LimitedSlotList.1;"
    iput-object p1, p0, Lcom/sonymobile/home/util/LimitedSlotList$1;->this$0:Lcom/sonymobile/home/util/LimitedSlotList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/home/util/LimitedSlotList$1;->this$0:Lcom/sonymobile/home/util/LimitedSlotList;

    # invokes: Lcom/sonymobile/home/util/LimitedSlotList;->get()Ljava/util/Collection;
    invoke-static {v0}, Lcom/sonymobile/home/util/LimitedSlotList;->access$000(Lcom/sonymobile/home/util/LimitedSlotList;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/util/LimitedSlotList$1;->mIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList$1;, "Lcom/sonymobile/home/util/LimitedSlotList.1;"
    iget-object v0, p0, Lcom/sonymobile/home/util/LimitedSlotList$1;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList$1;, "Lcom/sonymobile/home/util/LimitedSlotList.1;"
    iget-object v0, p0, Lcom/sonymobile/home/util/LimitedSlotList$1;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lcom/sonymobile/home/util/LimitedSlotList$1;, "Lcom/sonymobile/home/util/LimitedSlotList.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
