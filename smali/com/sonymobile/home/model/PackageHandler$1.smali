.class Lcom/sonymobile/home/model/PackageHandler$1;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/model/PackageHandler;->addOnPackagesLoadedListener(Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/PackageHandler;

.field final synthetic val$listener:Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$1;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    iput-object p2, p0, Lcom/sonymobile/home/model/PackageHandler$1;->val$listener:Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$1;->val$listener:Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;

    invoke-interface {v0}, Lcom/sonymobile/home/model/PackageHandler$OnPackagesLoadedListener;->onPackagesLoaded()V

    .line 369
    return-void
.end method
