.class Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;
.super Ljava/lang/Object;
.source "GroupItemMover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/itemorganizer/GroupItemMover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupItem"
.end annotation


# instance fields
.field public final item:Lcom/sonymobile/home/data/Item;

.field public final itemIndex:I

.field public final number:I

.field public final subIndex:I

.field final synthetic this$0:Lcom/sonymobile/home/itemorganizer/GroupItemMover;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/itemorganizer/GroupItemMover;IIILcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p2, "number"    # I
    .param p3, "subIndex"    # I
    .param p4, "itemIndex"    # I
    .param p5, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->this$0:Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    iput p2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    .line 1146
    iput p3, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    .line 1147
    iput p4, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    .line 1148
    iput-object p5, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->item:Lcom/sonymobile/home/data/Item;

    .line 1149
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->subIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->itemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->this$0:Lcom/sonymobile/home/itemorganizer/GroupItemMover;

    iget-object v2, p0, Lcom/sonymobile/home/itemorganizer/GroupItemMover$GroupItem;->item:Lcom/sonymobile/home/data/Item;

    # invokes: Lcom/sonymobile/home/itemorganizer/GroupItemMover;->itemToStr(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonymobile/home/itemorganizer/GroupItemMover;->access$000(Lcom/sonymobile/home/itemorganizer/GroupItemMover;Lcom/sonymobile/home/data/Item;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
