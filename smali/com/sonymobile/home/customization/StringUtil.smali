.class public Lcom/sonymobile/home/customization/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/customization/StringUtil;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static isWhitespace(I)Z
    .locals 2
    .param p0, "character"    # I

    .prologue
    const/4 v0, 0x1

    .line 90
    const/16 v1, 0x2007

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2008

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2009

    if-ne p0, v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    const/16 v1, 0xa0

    if-eq p0, v1, :cond_0

    const/16 v1, 0x202f

    if-eq p0, v1, :cond_0

    .line 100
    const/16 v1, 0x2028

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2029

    if-eq p0, v1, :cond_0

    const/16 v1, 0x85

    if-eq p0, v1, :cond_0

    .line 104
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 50
    .end local p1    # "def":I
    :goto_0
    return p1

    .line 45
    .restart local p1    # "def":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static trimWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    if-nez v1, :cond_1

    .line 76
    .end local v1    # "length":I
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 65
    .restart local v1    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 66
    .local v2, "start":I
    add-int/lit8 v0, v1, -0x1

    .line 68
    .local v0, "end":I
    :goto_1
    if-eq v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/sonymobile/home/customization/StringUtil;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    :cond_2
    :goto_2
    if-le v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/sonymobile/home/customization/StringUtil;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 76
    :cond_3
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
