.class public Lcom/sonymobile/home/search/suggest/ApiConstants;
.super Ljava/lang/Object;
.source "ApiConstants.java"


# static fields
.field private static final byteArray:[B

.field private static final sDevArray:[Ljava/lang/String;

.field private static final sDevPathArray:[Ljava/lang/String;

.field private static sKey:Ljava/lang/String;

.field private static sPath:Ljava/lang/String;

.field private static final sProdArray:[Ljava/lang/String;

.field private static final sProdPathArray:[Ljava/lang/String;

.field private static final sStageArray:[Ljava/lang/String;

.field private static final sStagePathArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->byteArray:[B

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "TI9ulRANKhGCxmAhE"

    aput-object v1, v0, v2

    const-string v1, "Z09WIFmatptpgISqCM"

    aput-object v1, v0, v3

    const-string v1, "eGrsh2eb09_ShMwg0B-3CrfF3dTJn"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sProdArray:[Ljava/lang/String;

    .line 65
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "3ZTcsE4S0NMyJtvIBN"

    aput-object v1, v0, v2

    const-string v1, "zSLB2qGC2mxfs"

    aput-object v1, v0, v3

    const-string v1, "WVDPLgo5hjtE="

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sProdPathArray:[Ljava/lang/String;

    .line 68
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "DM9h5EuKgegTLIGjI"

    aput-object v1, v0, v2

    const-string v1, "3QYj62OAIXZjJFjMopXdLvBog309"

    aput-object v1, v0, v3

    const-string v1, "_ShMwg0B-3CrfF3dTJn"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sStageArray:[Ljava/lang/String;

    .line 71
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "zplZJk10UBZkn-Sna6wr"

    aput-object v1, v0, v2

    const-string v1, "wN4hAkJKJMsaU0-Ff99qsM"

    aput-object v1, v0, v3

    const-string v1, "tnxKCMD73gSFYNDqmxnYTQ"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sStagePathArray:[Ljava/lang/String;

    .line 74
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "xbkUOkq"

    aput-object v1, v0, v2

    const-string v1, "v2Qd6f6"

    aput-object v1, v0, v3

    const-string v1, "NMoavNfQ=="

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sDevArray:[Ljava/lang/String;

    .line 77
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "YSSQFi9qDez5aksxraS-"

    aput-object v1, v0, v2

    const-string v1, "VXFSraIV_OzgsFBjRFXLw"

    aput-object v1, v0, v3

    const-string v1, "MkxDRuovk6kj4zPiOk3Q_O3"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sDevPathArray:[Ljava/lang/String;

    .line 99
    sput-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sKey:Ljava/lang/String;

    .line 101
    sput-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sPath:Ljava/lang/String;

    return-void

    .line 58
    nop

    :array_0
    .array-data 1
        0x54t
        0x65t
        0x61t
        0x6dt
        0x47t
        0x6ft
        0x6ct
        0x64t
        0x69t
        0x6ct
        0x6ft
        0x63t
        0x6bt
        0x73t
        0x41t
        0x6et
        0x64t
        0x54t
        0x68t
        0x65t
        0x45t
        0x76t
        0x69t
        0x6ct
        0x45t
        0x78t
        0x50t
        0x6ct
        0x42t
        0x65t
        0x61t
        0x72t
    .end array-data
.end method

.method private static decrypt(I)Ljava/lang/String;
    .locals 10
    .param p0, "index"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 151
    packed-switch p0, :pswitch_data_0

    .line 171
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Illegal index"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 153
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sProdArray:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sProdArray:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sProdArray:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "encrypted":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 176
    .local v1, "decoded":Ljava/lang/String;
    const/4 v5, 0x2

    :try_start_0
    invoke-static {v5}, Lcom/sonymobile/home/search/suggest/ApiConstants;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 177
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/16 v5, 0x8

    invoke-static {v3, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 178
    .local v4, "plainBytes":[B
    new-instance v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v1    # "decoded":Ljava/lang/String;
    .local v2, "decoded":Ljava/lang/String;
    move-object v1, v2

    .line 183
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "decoded":Ljava/lang/String;
    .end local v4    # "plainBytes":[B
    .restart local v1    # "decoded":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 156
    .end local v1    # "decoded":Ljava/lang/String;
    .end local v3    # "encrypted":Ljava/lang/String;
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sProdPathArray:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sProdPathArray:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sProdPathArray:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .restart local v3    # "encrypted":Ljava/lang/String;
    goto :goto_0

    .line 159
    .end local v3    # "encrypted":Ljava/lang/String;
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sStageArray:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sStageArray:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sStageArray:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .restart local v3    # "encrypted":Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v3    # "encrypted":Ljava/lang/String;
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sStagePathArray:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sStagePathArray:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sStagePathArray:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .restart local v3    # "encrypted":Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v3    # "encrypted":Ljava/lang/String;
    :pswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sDevArray:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sDevArray:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sDevArray:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .restart local v3    # "encrypted":Ljava/lang/String;
    goto/16 :goto_0

    .line 168
    .end local v3    # "encrypted":Ljava/lang/String;
    :pswitch_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sDevPathArray:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sDevPathArray:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/home/search/suggest/ApiConstants;->sDevPathArray:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    .restart local v3    # "encrypted":Ljava/lang/String;
    goto/16 :goto_0

    .line 179
    .restart local v1    # "decoded":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_1

    :catch_1
    move-exception v5

    goto/16 :goto_1

    :catch_2
    move-exception v5

    goto/16 :goto_1

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getCipher(I)Ljavax/crypto/Cipher;
    .locals 4
    .param p0, "mode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetInstance"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/sonymobile/home/search/suggest/ApiConstants;->byteArray:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 192
    .local v1, "keySpecification":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1    # "keySpecification":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getFacebookPlacementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "521502544690381_523743384466297"

    return-object v0
.end method

.method public static getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/ApiConstants;->decrypt(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sKey:Ljava/lang/String;

    .line 117
    :cond_0
    sget-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getMinimumRecommendationCount(I)I
    .locals 1
    .param p0, "maxAmount"    # I

    .prologue
    .line 206
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static getNumberOfRecommendationsToFetch(I)I
    .locals 1
    .param p0, "maxAmount"    # I

    .prologue
    .line 202
    mul-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/ApiConstants;->decrypt(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sPath:Ljava/lang/String;

    .line 129
    :cond_0
    sget-object v0, Lcom/sonymobile/home/search/suggest/ApiConstants;->sPath:Ljava/lang/String;

    return-object v0
.end method
