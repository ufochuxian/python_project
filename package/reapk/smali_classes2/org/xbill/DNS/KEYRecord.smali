.class public Lorg/xbill/DNS/KEYRecord;
.super Lorg/xbill/DNS/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/KEYRecord$a;,
        Lorg/xbill/DNS/KEYRecord$b;
    }
.end annotation


# static fields
.field public static final FLAG_NOAUTH:I = 0x8000

.field public static final FLAG_NOCONF:I = 0x4000

.field public static final FLAG_NOKEY:I = 0xc000

.field public static final OWNER_HOST:I = 0x200

.field public static final OWNER_USER:I = 0x0

.field public static final OWNER_ZONE:I = 0x100

.field public static final PROTOCOL_ANY:I = 0xff

.field public static final PROTOCOL_DNSSEC:I = 0x3

.field public static final PROTOCOL_EMAIL:I = 0x2

.field public static final PROTOCOL_IPSEC:I = 0x4

.field public static final PROTOCOL_TLS:I = 0x1

.field private static final serialVersionUID:J = 0x589e41991f74c08aL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lorg/xbill/DNS/s;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIIILjava/security/PublicKey;)V
    .locals 13
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "flags"    # I
    .param p6, "proto"    # I
    .param p7, "alg"    # I
    .param p8, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 326
    const/16 v4, 0x19

    move-object/from16 v0, p8

    move/from16 v1, p7

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->a(Ljava/security/PublicKey;I)[B

    move-result-object v11

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lorg/xbill/DNS/s;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    .line 328
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/xbill/DNS/KEYRecord;->publicKey:Ljava/security/PublicKey;

    .line 329
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 11
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "flags"    # I
    .param p6, "proto"    # I
    .param p7, "alg"    # I
    .param p8, "key"    # [B

    .prologue
    .line 310
    const/16 v2, 0x19

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/s;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    .line 311
    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)V
    .locals 5
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0xc000

    .line 333
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->d()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "flagString":Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/KEYRecord$a;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/xbill/DNS/KEYRecord;->flags:I

    .line 335
    iget v3, p0, Lorg/xbill/DNS/KEYRecord;->flags:I

    if-gez v3, :cond_0

    .line 336
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid flags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 337
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->d()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "protoString":Ljava/lang/String;
    invoke-static {v2}, Lorg/xbill/DNS/KEYRecord$b;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/xbill/DNS/KEYRecord;->proto:I

    .line 339
    iget v3, p0, Lorg/xbill/DNS/KEYRecord;->proto:I

    if-gez v3, :cond_1

    .line 340
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 341
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->d()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "algString":Ljava/lang/String;
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC$a;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/xbill/DNS/KEYRecord;->alg:I

    .line 343
    iget v3, p0, Lorg/xbill/DNS/KEYRecord;->alg:I

    if-gez v3, :cond_2

    .line 344
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 346
    :cond_2
    iget v3, p0, Lorg/xbill/DNS/KEYRecord;->flags:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    .line 347
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/xbill/DNS/KEYRecord;->key:[B

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->l()[B

    move-result-object v3

    iput-object v3, p0, Lorg/xbill/DNS/KEYRecord;->key:[B

    goto :goto_0
.end method
