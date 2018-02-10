.class public Lcom/jiliguala/niuwa/logic/l/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "mPlatform"    # I
    .param p1, "mTitle"    # Ljava/lang/String;
    .param p2, "mAbst"    # Ljava/lang/String;
    .param p3, "mThmbUrl"    # Ljava/lang/String;
    .param p4, "mPid"    # Ljava/lang/String;
    .param p5, "mType"    # I
    .param p6, "cat"    # Ljava/lang/String;
    .param p7, "age"    # Ljava/lang/String;
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "shareThmbUrl"    # Ljava/lang/String;
    .param p10, "shareUrl"    # Ljava/lang/String;
    .param p11, "shareSource"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {}, Lcom/jiliguala/niuwa/logic/l/c;->a()Lcom/jiliguala/niuwa/logic/l/c;

    move-result-object v0

    const/4 v12, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/jiliguala/niuwa/logic/l/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "mPlatform"    # I
    .param p1, "mTitle"    # Ljava/lang/String;
    .param p2, "mAbst"    # Ljava/lang/String;
    .param p3, "mThmbUrl"    # Ljava/lang/String;
    .param p4, "mPid"    # Ljava/lang/String;
    .param p5, "mType"    # I
    .param p6, "cat"    # Ljava/lang/String;
    .param p7, "age"    # Ljava/lang/String;
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "shareThmbUrl"    # Ljava/lang/String;
    .param p10, "shareUrl"    # Ljava/lang/String;
    .param p11, "shareSource"    # Ljava/lang/String;
    .param p12, "unitId"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lcom/jiliguala/niuwa/logic/l/c;->a()Lcom/jiliguala/niuwa/logic/l/c;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/jiliguala/niuwa/logic/l/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    .prologue
    .line 27
    invoke-static {}, Lcom/jiliguala/niuwa/logic/l/c;->a()Lcom/jiliguala/niuwa/logic/l/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/logic/l/c;->a(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p0, "mTitle"    # Ljava/lang/String;
    .param p1, "mAbst"    # Ljava/lang/String;
    .param p2, "mThmbUrl"    # Ljava/lang/String;
    .param p3, "mPid"    # Ljava/lang/String;
    .param p4, "mType"    # I
    .param p5, "viralType"    # I

    .prologue
    .line 13
    invoke-static {}, Lcom/jiliguala/niuwa/logic/l/c;->a()Lcom/jiliguala/niuwa/logic/l/c;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/jiliguala/niuwa/logic/l/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 14
    return-void
.end method
