.class public Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;
.super Ljava/lang/Object;
.source "ResourceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/model/ResourceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadRequest"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput-object p1, p0, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    .line 911
    iput-object p2, p0, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mHandler:Landroid/os/Handler;

    .line 912
    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .prologue
    .line 891
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;

    .prologue
    .line 891
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/sonymobile/home/model/ResourceHandler$LoadRequest;->mCallback:Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;

    invoke-interface {v0}, Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;->onResourceBatchLoaded()V

    .line 917
    return-void
.end method
