.class public Lorg/xbill/DNS/SIGRecord;
.super Lorg/xbill/DNS/ai;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x44e217f07be03542L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/ai;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V
    .locals 15
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "covered"    # I
    .param p6, "alg"    # I
    .param p7, "origttl"    # J
    .param p9, "expire"    # Ljava/util/Date;
    .param p10, "timeSigned"    # Ljava/util/Date;
    .param p11, "footprint"    # I
    .param p12, "signer"    # Lorg/xbill/DNS/Name;
    .param p13, "signature"    # [B

    .prologue
    .line 46
    const/16 v2, 0x18

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lorg/xbill/DNS/ai;-><init>(Lorg/xbill/DNS/Name;IIJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 48
    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/xbill/DNS/SIGRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SIGRecord;-><init>()V

    return-object v0
.end method
