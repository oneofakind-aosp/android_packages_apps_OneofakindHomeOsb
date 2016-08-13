.class public final Lcom/sonymobile/runtimeskinning/SkinGlue$GlueStub;
.super Ljava/lang/Object;
.source "SkinGlue.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/SkinGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlueStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/runtimeskinning/SkinGlue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/runtimeskinning/SkinGlue$1;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlue$GlueStub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkin(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public myUserId(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method
