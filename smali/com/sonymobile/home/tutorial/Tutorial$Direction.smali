.class public final enum Lcom/sonymobile/home/tutorial/Tutorial$Direction;
.super Ljava/lang/Enum;
.source "Tutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/tutorial/Tutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/tutorial/Tutorial$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/tutorial/Tutorial$Direction;

.field public static final enum BACK:Lcom/sonymobile/home/tutorial/Tutorial$Direction;

.field public static final enum NEXT:Lcom/sonymobile/home/tutorial/Tutorial$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/tutorial/Tutorial$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/tutorial/Tutorial$Direction;->NEXT:Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    new-instance v0, Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/tutorial/Tutorial$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/tutorial/Tutorial$Direction;->BACK:Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    sget-object v1, Lcom/sonymobile/home/tutorial/Tutorial$Direction;->NEXT:Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/home/tutorial/Tutorial$Direction;->BACK:Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/home/tutorial/Tutorial$Direction;->$VALUES:[Lcom/sonymobile/home/tutorial/Tutorial$Direction;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/tutorial/Tutorial$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/tutorial/Tutorial$Direction;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sonymobile/home/tutorial/Tutorial$Direction;->$VALUES:[Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    invoke-virtual {v0}, [Lcom/sonymobile/home/tutorial/Tutorial$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/tutorial/Tutorial$Direction;

    return-object v0
.end method
