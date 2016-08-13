.class Lcom/sonymobile/home/badge/BadgeManager$1;
.super Landroid/os/AsyncTask;
.source "BadgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/badge/BadgeManager;->sync(Lcom/sonymobile/home/model/PackageHandler;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/badge/BadgeManager;

.field final synthetic val$removedItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/badge/BadgeManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/sonymobile/home/badge/BadgeManager$1;->this$0:Lcom/sonymobile/home/badge/BadgeManager;

    iput-object p2, p0, Lcom/sonymobile/home/badge/BadgeManager$1;->val$removedItems:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 328
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/badge/BadgeManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager$1;->this$0:Lcom/sonymobile/home/badge/BadgeManager;

    iget-object v1, p0, Lcom/sonymobile/home/badge/BadgeManager$1;->val$removedItems:Ljava/util/List;

    # invokes: Lcom/sonymobile/home/badge/BadgeManager;->removeFromStorage(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/badge/BadgeManager;->access$000(Lcom/sonymobile/home/badge/BadgeManager;Ljava/util/List;)V

    .line 333
    const/4 v0, 0x0

    return-object v0
.end method
