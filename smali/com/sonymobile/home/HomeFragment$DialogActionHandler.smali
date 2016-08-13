.class Lcom/sonymobile/home/HomeFragment$DialogActionHandler;
.super Lcom/sonymobile/home/DialogActionResultHandler;
.source "HomeFragment.java"

# interfaces
.implements Lcom/sonymobile/home/DialogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogActionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/sonymobile/home/DialogActionResultHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/HomeFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/HomeFragment$1;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/sonymobile/home/HomeFragment$DialogActionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public addDialogActionListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V
    .locals 0
    .param p1, "actionCode"    # I
    .param p2, "listener"    # Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/home/HomeFragment$DialogActionHandler;->addListener(ILcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;)V

    .line 105
    return-void
.end method

.method public removeDialogActionListener(I)V
    .locals 0
    .param p1, "actionCode"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/HomeFragment$DialogActionHandler;->removeListener(I)V

    .line 110
    return-void
.end method
