.class public final enum Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
.super Ljava/lang/Enum;
.source "DesktopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DesktopZoomLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

.field public static final enum HIGH:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

.field public static final enum LOW:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

.field public static final enum NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .line 64
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->LOW:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .line 65
    new-instance v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->HIGH:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->NONE:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->LOW:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->HIGH:Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->$VALUES:[Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->$VALUES:[Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    invoke-virtual {v0}, [Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/desktop/DesktopView$DesktopZoomLevel;

    return-object v0
.end method
