.class Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Postman"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHasCallbacks:Z


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->mHasCallbacks:Z

    .line 385
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->mHandler:Landroid/os/Handler;

    .line 386
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/sonymobile/home/desktop/DesktopPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # Lcom/sonymobile/home/desktop/DesktopPresenter$1;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->hasCallback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;Ljava/lang/Runnable;J)Z
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # J

    .prologue
    .line 374
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method private hasCallback()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->mHasCallbacks:Z

    return v0
.end method

.method private postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->mHasCallbacks:Z

    .line 407
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method private removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->mHasCallbacks:Z

    .line 395
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$Postman;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method
