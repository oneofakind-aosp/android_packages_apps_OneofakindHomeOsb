.class Lcom/sonymobile/home/badge/BadgeManager$2;
.super Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;
.source "BadgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/badge/BadgeManager;->notifyBadgeChanged(Lcom/sonymobile/home/data/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable",
        "<",
        "Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/badge/BadgeManager;

.field final synthetic val$item:Lcom/sonymobile/home/data/Item;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/badge/BadgeManager;Lcom/sonymobile/home/data/Item;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sonymobile/home/badge/BadgeManager$2;->this$0:Lcom/sonymobile/home/badge/BadgeManager;

    iput-object p2, p0, Lcom/sonymobile/home/badge/BadgeManager$2;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-direct {p0}, Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sonymobile/home/badge/BadgeManager$2;->val$item:Lcom/sonymobile/home/data/Item;

    invoke-interface {p1, v0}, Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;->onBadgeChanged(Lcom/sonymobile/home/data/Item;)V

    .line 370
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 365
    check-cast p1, Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/badge/BadgeManager$2;->run(Lcom/sonymobile/home/badge/BadgeManager$OnBadgeChangeListener;)V

    return-void
.end method
