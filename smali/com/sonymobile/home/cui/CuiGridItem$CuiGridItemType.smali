.class public final enum Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
.super Ljava/lang/Enum;
.source "CuiGridItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/cui/CuiGridItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CuiGridItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_APP_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_MAIN_MENU_SETTINGS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_MAIN_MENU_THEMES:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_MAIN_MENU_WALLPAPERS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_MAIN_MENU_WIDGETS_AND_APPS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_SHORTCUT_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_WALLPAPERS_MORE_PICKER:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_WALLPAPER_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_WIDGETS_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_WIDGETS_MORE_APP_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_WIDGETS_MORE_SHORTCUT_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

.field public static final enum ITEM_WIDGET_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_MAIN_MENU_WIDGETS_AND_APPS"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_WIDGETS_AND_APPS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_MAIN_MENU_WALLPAPERS"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_WALLPAPERS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_MAIN_MENU_THEMES"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_THEMES:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_MAIN_MENU_SETTINGS"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_SETTINGS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    .line 23
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_WIDGETS_GROUP"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGETS_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_WIDGET_LEAF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGET_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_WIDGETS_MORE_SHORTCUT_GROUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGETS_MORE_SHORTCUT_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_WIDGETS_MORE_APP_GROUP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGETS_MORE_APP_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    .line 24
    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_APP_LEAF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_APP_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_SHORTCUT_LEAF"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_SHORTCUT_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_WALLPAPERS_MORE_PICKER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WALLPAPERS_MORE_PICKER:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    new-instance v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    const-string v1, "ITEM_WALLPAPER_LEAF"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WALLPAPER_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_WIDGETS_AND_APPS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_WALLPAPERS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_THEMES:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_MAIN_MENU_SETTINGS:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGETS_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGET_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGETS_MORE_SHORTCUT_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WIDGETS_MORE_APP_GROUP:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_APP_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_SHORTCUT_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WALLPAPERS_MORE_PICKER:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->ITEM_WALLPAPER_LEAF:Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->$VALUES:[Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->$VALUES:[Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    invoke-virtual {v0}, [Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/home/cui/CuiGridItem$CuiGridItemType;

    return-object v0
.end method
