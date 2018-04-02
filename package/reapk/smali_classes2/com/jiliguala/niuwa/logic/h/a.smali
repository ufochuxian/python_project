.class public Lcom/jiliguala/niuwa/logic/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "JLGL://order"

.field public static final B:Ljava/lang/String; = "JLGL://report"

.field public static final C:Ljava/lang/String; = "jlgl://classpurchase"

.field public static final D:Ljava/lang/String; = "JLGL://classlist"

.field public static final E:Ljava/lang/String; = "JLGL://class"

.field public static final F:Ljava/lang/String; = "JLGL://memberrenewal"

.field public static final G:Ljava/lang/String; = "JLGL://subscribe"

.field public static final H:Ljava/lang/String; = "JLGL://play_video"

.field public static final I:Ljava/lang/String; = "JLGL://speakcard"

.field public static final J:Ljava/lang/String; = "JLGL://lesson-list"

.field public static final K:Ljava/lang/String; = "uid="

.field public static final L:Ljava/lang/String; = "rid="

.field public static final M:Ljava/lang/String; = "pid="

.field public static final N:Ljava/lang/String; = "url="

.field public static final O:Ljava/lang/String; = "flr="

.field public static final P:Ljava/lang/String; = "channel="

.field public static final Q:Ljava/lang/String; = "channel_name="

.field public static final R:Ljava/lang/String; = "id="

.field public static final S:Ljava/lang/String; = "index="

.field public static final T:Ljava/lang/String; = "type="

.field public static final U:Ljava/lang/String; = "a="

.field public static final V:Ljava/lang/String; = "bid="

.field public static final W:Ljava/lang/String; = "typ="

.field public static final X:Ljava/lang/String; = "lv="

.field public static final Y:Ljava/lang/String; = "source="

.field public static final Z:Ljava/lang/String; = "role="

.field public static final a:Ljava/lang/String;

.field public static final aa:Ljava/lang/String; = "templateid="

.field public static final ab:Ljava/lang/String; = "sceneid="

.field public static final ac:Ljava/lang/String; = "portrait="

.field public static final ad:Ljava/lang/String; = "theme="

.field public static final ae:Ljava/lang/String; = "style="

.field public static final af:Ljava/lang/String; = "thmb1="

.field public static final ag:Ljava/lang/String; = "ttl1="

.field public static final ah:Ljava/lang/String; = "desc1="

.field public static final ai:Ljava/lang/String; = "thmb2="

.field public static final aj:Ljava/lang/String; = "ttl2="

.field public static final ak:Ljava/lang/String; = "desc2="

.field public static final al:Ljava/lang/String; = "sharethmb="

.field public static final am:Ljava/lang/String; = "sharecontent="

.field public static final an:Ljava/lang/String; = "sharettl="

.field public static final ao:Ljava/lang/String; = "shareurl="

.field public static final ap:Ljava/lang/String; = "red"

.field public static final aq:Ljava/lang/String; = "white"

.field public static ar:Landroid/support/v4/app/ag; = null

.field static as:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener; = null

.field private static at:Ljava/lang/String; = null

.field private static au:Ljava/lang/String; = null

.field private static av:Ljava/lang/String; = null

.field private static aw:Ljava/lang/String; = null

.field private static ax:Ljava/lang/String; = null

.field public static final b:Ljava/lang/String; = "jlgl"

.field public static final c:Ljava/lang/String; = "jlgl://"

.field public static final d:Ljava/lang/String; = "jlgl://video"

.field public static final e:Ljava/lang/String; = "video"

.field public static final f:Ljava/lang/String; = "jlgl://audio"

.field public static final g:Ljava/lang/String; = "audio"

.field public static final h:Ljava/lang/String; = "jlgl://image"

.field public static final i:Ljava/lang/String; = "jlgl://forum"

.field public static final j:Ljava/lang/String; = "forum"

.field public static final k:Ljava/lang/String; = "jlgl://flashcard"

.field public static final l:Ljava/lang/String; = "jlgl://user"

.field public static final m:Ljava/lang/String; = "jlgl://root"

.field public static final n:Ljava/lang/String; = "jlgl://lesson"

.field public static final o:Ljava/lang/String; = "JLGL://bundle"

.field public static final p:Ljava/lang/String; = "lesson"

.field public static final q:Ljava/lang/String; = "jlgl://guabiout"

.field public static final r:Ljava/lang/String; = "JLGL://newphoni-purchase"

.field public static final s:Ljava/lang/String; = "jlgl://sharepopup"

.field public static final t:Ljava/lang/String; = "jlgl://es"

.field public static final u:Ljava/lang/String; = "jlgl://story"

.field public static final v:Ljava/lang/String; = "story"

.field public static final w:Ljava/lang/String; = "http"

.field public static final x:Ljava/lang/String; = "https"

.field public static final y:Ljava/lang/String; = "jlgl://paidlist"

.field public static final z:Ljava/lang/String; = "JLGL://story_lessons"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/jiliguala/niuwa/logic/h/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/h/a;->a:Ljava/lang/String;

    .line 188
    new-instance v0, Lcom/jiliguala/niuwa/logic/h/a$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/h/a$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/h/a;->as:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/jiliguala/niuwa/logic/h/a;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public static a([Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p0, "str"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 826
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 828
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 829
    .local v0, "item":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 830
    .local v2, "result":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 832
    .end local v0    # "item":Ljava/lang/String;
    .end local v2    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 835
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "schemaUrl"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V

    .line 236
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V
    .locals 56
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "schemaUrl"    # Ljava/lang/String;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/ag;

    .prologue
    .line 241
    sput-object p2, Lcom/jiliguala/niuwa/logic/h/a;->ar:Landroid/support/v4/app/ag;

    .line 242
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-eqz v52, :cond_1

    .line 764
    .end local p0    # "ctx":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 247
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v52

    if-eqz v52, :cond_0

    .line 252
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 257
    .local v23, "jlglUri":Landroid/net/Uri;
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v34

    .line 259
    .local v34, "scheme":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-nez v52, :cond_0

    .line 265
    :try_start_0
    const-string v52, "jlgl"

    move-object/from16 v0, v34

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_4c

    .line 267
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 268
    .local v26, "params":[Ljava/lang/String;
    const/16 v30, 0x0

    .line 269
    .local v30, "rid":Ljava/lang/String;
    const/16 v28, 0x0

    .line 270
    .local v28, "pid":Ljava/lang/String;
    const/16 v49, 0x0

    .line 271
    .local v49, "url":Ljava/lang/String;
    const-string v13, "0"

    .line 272
    .local v13, "flr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 273
    .local v7, "chl":Ljava/lang/String;
    const/4 v8, 0x0

    .line 274
    .local v8, "chlNm":Ljava/lang/String;
    const/16 v48, 0x0

    .line 275
    .local v48, "uid":Ljava/lang/String;
    const/16 v19, 0x0

    .line 276
    .local v19, "id":Ljava/lang/String;
    const/16 v47, 0x0

    .line 277
    .local v47, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 278
    .local v3, "a":Ljava/lang/String;
    const/16 v46, 0x0

    .line 279
    .local v46, "typ":Ljava/lang/String;
    const/4 v5, 0x0

    .line 280
    .local v5, "bid":Ljava/lang/String;
    const/16 v24, 0x0

    .line 281
    .local v24, "lv":Ljava/lang/String;
    const/16 v41, 0x0

    .line 282
    .local v41, "source":Ljava/lang/String;
    const/16 v31, 0x0

    .line 283
    .local v31, "role":Ljava/lang/String;
    const/16 v42, 0x0

    .line 284
    .local v42, "templeteid":Ljava/lang/String;
    const/16 v33, 0x0

    .line 285
    .local v33, "sceneid":Ljava/lang/String;
    const/16 v29, 0x0

    .line 286
    .local v29, "portrait":Ljava/lang/String;
    const/16 v52, 0x0

    sput-object v52, Lcom/jiliguala/niuwa/logic/h/a;->ax:Ljava/lang/String;

    .line 287
    const/16 v52, 0x0

    sput-object v52, Lcom/jiliguala/niuwa/logic/h/a;->aw:Ljava/lang/String;

    .line 288
    const/16 v43, 0x0

    .line 289
    .local v43, "thmb1":Ljava/lang/String;
    const/16 v45, 0x0

    .line 290
    .local v45, "ttl1":Ljava/lang/String;
    const/4 v10, 0x0

    .line 291
    .local v10, "desc1":Ljava/lang/String;
    const/16 v52, 0x0

    sput-object v52, Lcom/jiliguala/niuwa/logic/h/a;->at:Ljava/lang/String;

    .line 292
    const/16 v52, 0x0

    sput-object v52, Lcom/jiliguala/niuwa/logic/h/a;->au:Ljava/lang/String;

    .line 293
    const/16 v52, 0x0

    sput-object v52, Lcom/jiliguala/niuwa/logic/h/a;->av:Ljava/lang/String;

    .line 294
    const/16 v37, 0x0

    .line 295
    .local v37, "sharethmb":Ljava/lang/String;
    const/16 v38, 0x0

    .line 296
    .local v38, "sharettl":Ljava/lang/String;
    const/16 v36, 0x0

    .line 297
    .local v36, "sharecontent":Ljava/lang/String;
    const/16 v39, 0x0

    .line 298
    .local v39, "shareurl":Ljava/lang/String;
    const/16 v20, 0x0

    .line 299
    .local v20, "index":I
    if-eqz v26, :cond_21

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v52, v0

    if-lez v52, :cond_21

    .line 300
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v53, v0

    const/16 v52, 0x0

    :goto_1
    move/from16 v0, v52

    move/from16 v1, v53

    if-ge v0, v1, :cond_21

    aget-object v25, v26, v52

    .line 301
    .local v25, "param":Ljava/lang/String;
    const-string v54, "rid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_3

    .line 302
    const-string v54, "rid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "rid="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 300
    :cond_2
    :goto_2
    add-int/lit8 v52, v52, 0x1

    goto :goto_1

    .line 303
    :cond_3
    const-string v54, "pid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_4

    .line 304
    const-string v54, "pid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "pid="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    goto :goto_2

    .line 305
    :cond_4
    const-string v54, "url="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_5

    .line 306
    const-string v54, "url="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "url="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v49

    goto :goto_2

    .line 307
    :cond_5
    const-string v54, "flr="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_6

    .line 308
    const-string v54, "flr="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "flr="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 309
    :cond_6
    const-string v54, "channel="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_7

    .line 310
    const-string v54, "channel="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "channel="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 311
    :cond_7
    const-string v54, "channel_name="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_8

    .line 312
    const-string v54, "channel_name="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "channel_name="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 313
    :cond_8
    const-string v54, "uid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_9

    .line 314
    const-string v54, "uid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "uid="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v48

    goto/16 :goto_2

    .line 315
    :cond_9
    const-string v54, "id="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_a

    .line 316
    const-string v54, "id="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "id="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 317
    :cond_a
    const-string v54, "index="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_b

    .line 318
    const-string v54, "index="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "index="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v20

    goto/16 :goto_2

    .line 319
    :cond_b
    const-string v54, "type="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_c

    .line 320
    const-string v54, "type="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "type="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_2

    .line 321
    :cond_c
    const-string v54, "a="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_d

    .line 322
    const-string v54, "a="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "a="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 323
    :cond_d
    const-string v54, "bid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_e

    .line 324
    const-string v54, "bid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "bid="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 325
    :cond_e
    const-string v54, "typ="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_f

    .line 326
    const-string v54, "typ="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "typ="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v46

    goto/16 :goto_2

    .line 327
    :cond_f
    const-string v54, "lv="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_10

    .line 328
    const-string v54, "lv="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "lv="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_2

    .line 329
    :cond_10
    const-string v54, "source="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_11

    .line 330
    const-string v54, "source="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "source="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_2

    .line 331
    :cond_11
    const-string v54, "role="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_12

    .line 332
    const-string v54, "role="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "role="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_2

    .line 333
    :cond_12
    const-string v54, "templateid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_13

    .line 334
    const-string v54, "templateid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "templateid="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 335
    :cond_13
    const-string v54, "sceneid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_14

    .line 336
    const-string v54, "sceneid="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "sceneid="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_2

    .line 337
    :cond_14
    const-string v54, "portrait="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_15

    .line 338
    const-string v54, "portrait="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "portrait="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_2

    .line 339
    :cond_15
    const-string v54, "theme="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_16

    .line 340
    const-string v54, "theme="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "theme="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    sput-object v54, Lcom/jiliguala/niuwa/logic/h/a;->ax:Ljava/lang/String;

    goto/16 :goto_2

    .line 759
    .end local v3    # "a":Ljava/lang/String;
    .end local v5    # "bid":Ljava/lang/String;
    .end local v7    # "chl":Ljava/lang/String;
    .end local v8    # "chlNm":Ljava/lang/String;
    .end local v10    # "desc1":Ljava/lang/String;
    .end local v13    # "flr":Ljava/lang/String;
    .end local v19    # "id":Ljava/lang/String;
    .end local v20    # "index":I
    .end local v24    # "lv":Ljava/lang/String;
    .end local v25    # "param":Ljava/lang/String;
    .end local v26    # "params":[Ljava/lang/String;
    .end local v28    # "pid":Ljava/lang/String;
    .end local v29    # "portrait":Ljava/lang/String;
    .end local v30    # "rid":Ljava/lang/String;
    .end local v31    # "role":Ljava/lang/String;
    .end local v33    # "sceneid":Ljava/lang/String;
    .end local v36    # "sharecontent":Ljava/lang/String;
    .end local v37    # "sharethmb":Ljava/lang/String;
    .end local v38    # "sharettl":Ljava/lang/String;
    .end local v39    # "shareurl":Ljava/lang/String;
    .end local v41    # "source":Ljava/lang/String;
    .end local v42    # "templeteid":Ljava/lang/String;
    .end local v43    # "thmb1":Ljava/lang/String;
    .end local v45    # "ttl1":Ljava/lang/String;
    .end local v46    # "typ":Ljava/lang/String;
    .end local v47    # "type":Ljava/lang/String;
    .end local v48    # "uid":Ljava/lang/String;
    .end local v49    # "url":Ljava/lang/String;
    .end local p0    # "ctx":Landroid/content/Context;
    :catch_0
    move-exception v52

    goto/16 :goto_0

    .line 341
    .restart local v3    # "a":Ljava/lang/String;
    .restart local v5    # "bid":Ljava/lang/String;
    .restart local v7    # "chl":Ljava/lang/String;
    .restart local v8    # "chlNm":Ljava/lang/String;
    .restart local v10    # "desc1":Ljava/lang/String;
    .restart local v13    # "flr":Ljava/lang/String;
    .restart local v19    # "id":Ljava/lang/String;
    .restart local v20    # "index":I
    .restart local v24    # "lv":Ljava/lang/String;
    .restart local v25    # "param":Ljava/lang/String;
    .restart local v26    # "params":[Ljava/lang/String;
    .restart local v28    # "pid":Ljava/lang/String;
    .restart local v29    # "portrait":Ljava/lang/String;
    .restart local v30    # "rid":Ljava/lang/String;
    .restart local v31    # "role":Ljava/lang/String;
    .restart local v33    # "sceneid":Ljava/lang/String;
    .restart local v36    # "sharecontent":Ljava/lang/String;
    .restart local v37    # "sharethmb":Ljava/lang/String;
    .restart local v38    # "sharettl":Ljava/lang/String;
    .restart local v39    # "shareurl":Ljava/lang/String;
    .restart local v41    # "source":Ljava/lang/String;
    .restart local v42    # "templeteid":Ljava/lang/String;
    .restart local v43    # "thmb1":Ljava/lang/String;
    .restart local v45    # "ttl1":Ljava/lang/String;
    .restart local v46    # "typ":Ljava/lang/String;
    .restart local v47    # "type":Ljava/lang/String;
    .restart local v48    # "uid":Ljava/lang/String;
    .restart local v49    # "url":Ljava/lang/String;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_16
    const-string v54, "style="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_17

    .line 342
    const-string v54, "style="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "style="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    sput-object v54, Lcom/jiliguala/niuwa/logic/h/a;->aw:Ljava/lang/String;

    goto/16 :goto_2

    .line 343
    :cond_17
    const-string v54, "thmb1="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_18

    .line 344
    const-string v54, "thmb1="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "thmb1="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_2

    .line 345
    :cond_18
    const-string v54, "ttl1="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_19

    .line 346
    const-string v54, "ttl1="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "ttl1="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_2

    .line 347
    :cond_19
    const-string v54, "desc1="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_1a

    .line 348
    const-string v54, "desc1="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "desc1="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 349
    :cond_1a
    const-string v54, "thmb2="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_1b

    .line 350
    const-string v54, "thmb2="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "thmb2="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    sput-object v54, Lcom/jiliguala/niuwa/logic/h/a;->at:Ljava/lang/String;

    goto/16 :goto_2

    .line 351
    :cond_1b
    const-string v54, "ttl2="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_1c

    .line 352
    const-string v54, "ttl2="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "ttl2="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    sput-object v54, Lcom/jiliguala/niuwa/logic/h/a;->au:Ljava/lang/String;

    goto/16 :goto_2

    .line 353
    :cond_1c
    const-string v54, "desc2="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_1d

    .line 354
    const-string v54, "desc2="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "desc2="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    sput-object v54, Lcom/jiliguala/niuwa/logic/h/a;->av:Ljava/lang/String;

    goto/16 :goto_2

    .line 355
    :cond_1d
    const-string v54, "sharethmb="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_1e

    .line 356
    const-string v54, "sharethmb="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "sharethmb="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_2

    .line 357
    :cond_1e
    const-string v54, "sharettl="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_1f

    .line 358
    const-string v54, "sharettl="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "sharettl="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_2

    .line 359
    :cond_1f
    const-string v54, "sharecontent="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_20

    .line 360
    const-string v54, "sharecontent="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "sharecontent="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_2

    .line 361
    :cond_20
    const-string v54, "shareurl="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_2

    .line 362
    const-string v54, "shareurl="

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v54

    const-string v55, "shareurl="

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v55

    add-int v54, v54, v55

    move-object/from16 v0, v25

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v54

    const-string v55, "utf-8"

    invoke-static/range {v54 .. v55}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_2

    .line 367
    .end local v25    # "param":Ljava/lang/String;
    :cond_21
    const-string v52, "jlgl://video"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_27

    .line 368
    new-instance v50, Landroid/content/Intent;

    invoke-direct/range {v50 .. v50}, Landroid/content/Intent;-><init>()V

    .line 369
    .local v50, "videoIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_26

    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v52

    if-nez v52, :cond_26

    .line 370
    const-class v52, Lcom/jiliguala/niuwa/module/video/VideoLandscapeActivity;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 374
    :goto_3
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-nez v52, :cond_22

    .line 375
    const-string v52, "rid"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    :cond_22
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-nez v52, :cond_23

    .line 378
    const-string v52, "channel"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    :cond_23
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-nez v52, :cond_24

    .line 381
    const-string v52, "channel_nm"

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    :cond_24
    const/high16 v52, 0x10000000

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    const-string v52, "mode=lesson"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 385
    .local v18, "hasMode":Z
    if-eqz v18, :cond_25

    .line 387
    const-string v52, "from_practise"

    const/16 v53, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    const-string v52, "has_model"

    const/16 v53, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 391
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 392
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 372
    .end local v18    # "hasMode":Z
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_26
    const-class v52, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 394
    .end local v50    # "videoIntent":Landroid/content/Intent;
    :cond_27
    const-string v52, "jlgl://audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_2b

    .line 398
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 399
    .local v4, "audioIntent":Landroid/content/Intent;
    const-class v52, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 400
    const-string v52, "rid"

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-nez v52, :cond_28

    .line 402
    const-string v52, "channel"

    move-object/from16 v0, v52

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    :cond_28
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-nez v52, :cond_29

    .line 405
    const-string v52, "channel_nm"

    move-object/from16 v0, v52

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    :cond_29
    const-string v52, "extra"

    const/16 v53, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const/high16 v52, 0x10000000

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    const-string v52, "mode=lesson"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 410
    .restart local v18    # "hasMode":Z
    if-eqz v18, :cond_2a

    .line 412
    const-string v52, "from_practise"

    const/16 v53, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    const-string v52, "has_model"

    const/16 v53, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    const-string v52, "hardwareAccelerated"

    const/16 v53, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    :cond_2a
    const-string v52, "loop=true"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    .line 417
    .local v22, "isLoop":Z
    const-string v52, "is_loop"

    move-object/from16 v0, v52

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    const-string v52, "from=roadmap"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 419
    .local v17, "fromRoadmap":Z
    const-string v52, "roadmap_listen"

    move-object/from16 v0, v52

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 421
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 422
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 424
    .end local v4    # "audioIntent":Landroid/content/Intent;
    .end local v17    # "fromRoadmap":Z
    .end local v18    # "hasMode":Z
    .end local v22    # "isLoop":Z
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_2b
    const-string v52, "jlgl://forum"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_2c

    .line 425
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-nez v52, :cond_0

    .line 428
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 429
    .local v15, "forumIntent":Landroid/content/Intent;
    const-class v52, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 430
    const-string v52, "rid"

    move-object/from16 v0, v52

    move-object/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    const/4 v14, 0x0

    .line 433
    .local v14, "flr_num":I
    :try_start_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v14

    .line 437
    :goto_4
    :try_start_2
    const-string v52, "flr"

    move-object/from16 v0, v52

    invoke-virtual {v15, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    const/high16 v52, 0x10000000

    move/from16 v0, v52

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 439
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 440
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 441
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 443
    .end local v14    # "flr_num":I
    .end local v15    # "forumIntent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_2c
    const-string v52, "jlgl://image"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_2d

    .line 444
    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-nez v52, :cond_0

    .line 447
    if-eqz p2, :cond_0

    .line 448
    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    move-result-object v16

    .line 449
    .local v16, "fragment":Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->show(Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 451
    .end local v16    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
    :cond_2d
    const-string v52, "jlgl://flashcard"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_2e

    .line 452
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-nez v52, :cond_0

    .line 455
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 456
    .local v12, "flashcardIntent":Landroid/content/Intent;
    const-class v52, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 457
    const-string v52, "rid"

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const/high16 v52, 0x10000000

    move/from16 v0, v52

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 460
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 461
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 463
    .end local v12    # "flashcardIntent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_2e
    const-string v52, "jlgl://root"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_2f

    .line 464
    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V

    .line 465
    .local v32, "rootIntent":Landroid/content/Intent;
    const-class v52, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 466
    const/high16 v52, 0x4000000

    move-object/from16 v0, v32

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 467
    const/high16 v52, 0x10000000

    move-object/from16 v0, v32

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 468
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 469
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 470
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 472
    .end local v32    # "rootIntent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_2f
    const-string v52, "jlgl://user"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_30

    .line 474
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v27, "personalInfoIntent":Landroid/content/Intent;
    const-class v52, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 476
    const-string v52, "KEY_UID"

    move-object/from16 v0, v27

    move-object/from16 v1, v52

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v52, "KEY_FROM_AVA_CLICK"

    const/16 v53, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    const/high16 v52, 0x10000000

    move-object/from16 v0, v27

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 480
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 481
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 484
    .end local v27    # "personalInfoIntent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_30
    const-string v52, "jlgl://lesson"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_36

    .line 485
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v52

    if-nez v52, :cond_31

    .line 487
    :try_start_3
    new-instance v21, Landroid/content/Intent;

    const-class v52, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    .local v21, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v6, "bundle":Landroid/os/Bundle;
    new-instance v9, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    invoke-direct {v9}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;-><init>()V

    .line 490
    .local v9, "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    move-object/from16 v0, v47

    iput-object v0, v9, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->cat:Ljava/lang/String;

    .line 491
    const-string v52, "course_cat"

    move-object/from16 v0, v52

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 492
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 493
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 494
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 495
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v9    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    .end local v21    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v11

    .line 496
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 498
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_31
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v52

    if-nez v52, :cond_35

    .line 500
    invoke-static/range {v24 .. v24}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isMc(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_34

    .line 501
    invoke-static/range {v24 .. v24}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB1MC(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_32

    .line 502
    new-instance v21, Landroid/content/Intent;

    const-class v52, Lcom/jiliguala/niuwa/module/NewRoadMap/BabyRoadmapActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .restart local v21    # "intent":Landroid/content/Intent;
    const-string v52, "type"

    const-string v53, "MC"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v52, "server_lv"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 506
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_32
    invoke-static/range {v24 .. v24}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isB2MC(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_33

    .line 507
    new-instance v21, Landroid/content/Intent;

    const-class v52, Lcom/jiliguala/niuwa/module/NewRoadMap/ParentingRoadMapActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .restart local v21    # "intent":Landroid/content/Intent;
    const-string v52, "type"

    const-string v53, "MC"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v52, "server_lv"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 512
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_33
    new-instance v21, Landroid/content/Intent;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v52

    const-class v53, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    .restart local v21    # "intent":Landroid/content/Intent;
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 514
    const-string v52, "type"

    const-string v53, "MC"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v52, "server_lv"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 518
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_34
    invoke-static/range {v24 .. v24}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isPH(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_0

    .line 519
    new-instance v21, Landroid/content/Intent;

    const-class v52, Lcom/jiliguala/niuwa/module/NewRoadMap/NewRoadMapActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .restart local v21    # "intent":Landroid/content/Intent;
    const-string v52, "type"

    const-string v53, "PH"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v52, "server_lv"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 526
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_35
    :try_start_5
    new-instance v21, Landroid/content/Intent;

    const-class v52, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .restart local v21    # "intent":Landroid/content/Intent;
    const-string v52, "KEY_COURSE_ID"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string v52, "KEY_SUBCOURSE_INDEX"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 530
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 531
    .end local v21    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v11

    .line 532
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 535
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_36
    const-string v52, "jlgl://guabiout"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_37

    .line 536
    invoke-static/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v21

    .line 537
    .restart local v21    # "intent":Landroid/content/Intent;
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 538
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 539
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 540
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 542
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_37
    const-string v52, "jlgl://es"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_38

    .line 544
    const/16 v52, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-static {v0, v3, v1}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 545
    .restart local v21    # "intent":Landroid/content/Intent;
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 546
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 547
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 548
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 550
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_38
    const-string v52, "jlgl://story"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_3a

    .line 551
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 552
    .restart local v21    # "intent":Landroid/content/Intent;
    const-string v52, "JLGL://story_lessons"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_39

    .line 554
    const-class v52, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 555
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 557
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 558
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 561
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_39
    const-class v52, Lcom/jiliguala/niuwa/module/story/StoryActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 562
    new-instance v44, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-direct/range {v44 .. v44}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;-><init>()V

    .line 563
    .local v44, "ticket":Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setResourceId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 564
    const-string v52, "PARAM_COURSE_TICKET"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 565
    const-string v52, "PARAM_STORY_FROM_COURSE"

    const/16 v53, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 566
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 568
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 569
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f010023

    const v53, 0x7f010015

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 572
    .end local v21    # "intent":Landroid/content/Intent;
    .end local v44    # "ticket":Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_3a
    const-string v52, "jlgl://paidlist"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_3b

    .line 573
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 574
    .restart local v21    # "intent":Landroid/content/Intent;
    const-class v52, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 575
    const-string v52, "purchased_goods_index"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 576
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 577
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 578
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 579
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 581
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_3b
    const-string v52, "JLGL://bundle"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_3c

    .line 582
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 583
    .restart local v21    # "intent":Landroid/content/Intent;
    const-class v52, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 584
    const-string v52, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 587
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 588
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 590
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_3c
    const-string v52, "JLGL://order"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_3d

    .line 591
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 592
    .restart local v21    # "intent":Landroid/content/Intent;
    const-class v52, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 593
    const-string v52, "order_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 596
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 597
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 599
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_3d
    const-string v52, "JLGL://report"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_3e

    .line 600
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 601
    .restart local v21    # "intent":Landroid/content/Intent;
    const-class v52, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 602
    const-string v52, "bid"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string v52, "typ"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v52, "lv"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 606
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 607
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 608
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 610
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_3e
    const-string v52, "jlgl://classpurchase"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_43

    .line 611
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 612
    .restart local v21    # "intent":Landroid/content/Intent;
    const-class v52, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 613
    const-string v52, "KEY_SHOW_SUSPENSION_"

    const/16 v53, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 614
    const-string v52, "HIDE SUSPENSION SHARE"

    const/16 v53, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    const-string v52, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string v52, "Home"

    move-object/from16 v0, v52

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_3f

    .line 617
    const-string v52, "KEY_PURCHASE_SOURCE"

    const-string v53, "Home"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    :goto_5
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v53, Lcom/jiliguala/niuwa/logic/m/f;->p:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "onlinecourse-purchase.html?source=%s&bid=%s"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    aput-object v41, v53, v54

    const/16 v54, 0x1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v55

    aput-object v55, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    .line 628
    const-string v52, "key_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 630
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 631
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 632
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 618
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_3f
    const-string v52, "1v1Detail View"

    move-object/from16 v0, v52

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_40

    .line 619
    const-string v52, "KEY_PURCHASE_SOURCE"

    const-string v53, "1v1Detail View"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 620
    :cond_40
    const-string v52, "Notification"

    move-object/from16 v0, v52

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_41

    .line 621
    const-string v52, "KEY_PURCHASE_SOURCE"

    const-string v53, "Notification"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 622
    :cond_41
    const-string v52, "Push"

    move-object/from16 v0, v52

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_42

    .line 623
    const-string v52, "KEY_PURCHASE_SOURCE"

    const-string v53, "Push"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 625
    :cond_42
    const-string v52, "KEY_PURCHASE_SOURCE"

    const-string v53, "Roadmap"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 634
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_43
    const-string v52, "JLGL://classlist"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_44

    .line 635
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v53, Lcom/jiliguala/niuwa/logic/m/f;->p:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "classroom-entry.html?role=%s"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    const/16 v53, 0x1

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    aput-object v31, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    .line 637
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 638
    .restart local v21    # "intent":Landroid/content/Intent;
    const-class v52, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 639
    const-string v52, "KEY_SHOW_SUSPENSION_"

    const/16 v53, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    const-string v52, "HIDE SUSPENSION SHARE"

    const/16 v53, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 641
    const-string v52, "key_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 644
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 645
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 647
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_44
    const-string v52, "JLGL://class"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_45

    .line 648
    const-string v52, "\u8bf7\u4f7f\u7528iPad\uff0fiPhone\u8fdb\u5165\u6559\u5ba4\uff01"

    invoke-static/range {v52 .. v52}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 649
    :cond_45
    const-string v52, "JLGL://memberrenewal"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_46

    .line 650
    invoke-static/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goMemberRenewal(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 651
    :cond_46
    const-string v52, "JLGL://subscribe"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_47

    .line 652
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/ae;->a(Ljava/lang/String;)V

    .line 653
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/ae;->b(Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/ae;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 655
    :cond_47
    const-string v52, "JLGL://play_video"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_48

    .line 656
    new-instance v21, Landroid/content/Intent;

    const-class v52, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 657
    .restart local v21    # "intent":Landroid/content/Intent;
    const-string v51, ""
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 659
    .local v51, "videoUrl":Ljava/lang/String;
    :try_start_7
    const-string v52, "utf-8"

    move-object/from16 v0, v49

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v51

    .line 663
    :goto_6
    :try_start_8
    const-string v52, "key_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string v52, "KEY_PORTRAIT"

    const-string v53, "1"

    move-object/from16 v0, v53

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 660
    :catch_3
    move-exception v11

    .line 661
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6

    .line 666
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v21    # "intent":Landroid/content/Intent;
    .end local v51    # "videoUrl":Ljava/lang/String;
    :cond_48
    const-string v52, "JLGL://newphoni-purchase"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_49

    .line 667
    invoke-static/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goL1Ph1v1(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 668
    :cond_49
    const-string v52, "JLGL://speakcard"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_4a

    .line 669
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 670
    .restart local v6    # "bundle":Landroid/os/Bundle;
    new-instance v21, Landroid/content/Intent;

    const-class v52, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    .restart local v21    # "intent":Landroid/content/Intent;
    const-string v52, "rid"

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v52, "subtask_id"

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v52, "cancel_cd"

    const/16 v53, 0x1

    move-object/from16 v0, v52

    move/from16 v1, v53

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 674
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 676
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_4a
    const-string v52, "jlgl://sharepopup"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_0

    .line 677
    invoke-static/range {p2 .. p2}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;

    move-result-object v40

    .line 678
    .local v40, "simpleShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;
    new-instance v35, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    invoke-direct/range {v35 .. v35}, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;-><init>()V

    .line 679
    .local v35, "shareInfoTemplete":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;
    move-object/from16 v0, v37

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mThumbUrl:Ljava/lang/String;

    .line 680
    move-object/from16 v0, v39

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareUrl:Ljava/lang/String;

    .line 681
    move-object/from16 v0, v38

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitle:Ljava/lang/String;

    .line 682
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mAbstract:Ljava/lang/String;

    .line 683
    const-string v52, "Treasure"

    move-object/from16 v0, v52

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mSource:Ljava/lang/String;

    .line 684
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareType:I

    .line 685
    const v52, 0x7f0801f4

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->topImgIconPlaceHolder:I

    .line 686
    sget-object v52, Lcom/jiliguala/niuwa/logic/h/a;->aw:Ljava/lang/String;

    const-string v53, "red"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_4b

    .line 687
    const v52, 0x7f0600fe

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitleTxtColor:I

    .line 688
    const v52, 0x7f060097

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    .line 689
    const v52, 0x7f0800b1

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    .line 690
    const v52, 0x7f0801db

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mWeiXinIcon:I

    .line 691
    const v52, 0x7f080377

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->bottomStyle:I

    .line 699
    :goto_7
    move-object/from16 v0, v45

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->title:Ljava/lang/String;

    .line 700
    move-object/from16 v0, v35

    iput-object v10, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->subTitle:Ljava/lang/String;

    .line 701
    const v52, 0x3f358106    # 0.709f

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mRatio:F

    .line 702
    move-object/from16 v0, v43

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->topImgUrl:Ljava/lang/String;

    .line 703
    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->setShareInfoTemplete(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;)V

    .line 704
    sget-object v52, Lcom/jiliguala/niuwa/logic/h/a;->as:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->setShareSuccessListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    .line 705
    move-object/from16 v0, v40

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->show(Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 693
    :cond_4b
    const v52, 0x7f06002e

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitleTxtColor:I

    .line 694
    const v52, 0x7f0600fe

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    .line 695
    const v52, 0x7f0800a2

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    .line 696
    const v52, 0x7f0801dd

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mWeiXinIcon:I

    .line 697
    const v52, 0x7f080380

    move/from16 v0, v52

    move-object/from16 v1, v35

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->bottomStyle:I

    goto :goto_7

    .line 709
    .end local v3    # "a":Ljava/lang/String;
    .end local v5    # "bid":Ljava/lang/String;
    .end local v7    # "chl":Ljava/lang/String;
    .end local v8    # "chlNm":Ljava/lang/String;
    .end local v10    # "desc1":Ljava/lang/String;
    .end local v13    # "flr":Ljava/lang/String;
    .end local v19    # "id":Ljava/lang/String;
    .end local v20    # "index":I
    .end local v24    # "lv":Ljava/lang/String;
    .end local v26    # "params":[Ljava/lang/String;
    .end local v28    # "pid":Ljava/lang/String;
    .end local v29    # "portrait":Ljava/lang/String;
    .end local v30    # "rid":Ljava/lang/String;
    .end local v31    # "role":Ljava/lang/String;
    .end local v33    # "sceneid":Ljava/lang/String;
    .end local v35    # "shareInfoTemplete":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;
    .end local v36    # "sharecontent":Ljava/lang/String;
    .end local v37    # "sharethmb":Ljava/lang/String;
    .end local v38    # "sharettl":Ljava/lang/String;
    .end local v39    # "shareurl":Ljava/lang/String;
    .end local v40    # "simpleShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;
    .end local v41    # "source":Ljava/lang/String;
    .end local v42    # "templeteid":Ljava/lang/String;
    .end local v43    # "thmb1":Ljava/lang/String;
    .end local v45    # "ttl1":Ljava/lang/String;
    .end local v46    # "typ":Ljava/lang/String;
    .end local v47    # "type":Ljava/lang/String;
    .end local v48    # "uid":Ljava/lang/String;
    .end local v49    # "url":Ljava/lang/String;
    :cond_4c
    const-string v52, "http"

    move-object/from16 v0, v34

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_4d

    const-string v52, "https"

    move-object/from16 v0, v34

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_0

    .line 711
    :cond_4d
    const-string v52, "wap.koudaitong.com"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v52

    if-eqz v52, :cond_4e

    .line 712
    const-string v52, "-relay-"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 713
    .restart local v21    # "intent":Landroid/content/Intent;
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 714
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 715
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 716
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 721
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_4e
    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/a;->c(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_52

    .line 722
    new-instance v21, Landroid/content/Intent;

    const-class v52, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 726
    .restart local v21    # "intent":Landroid/content/Intent;
    :goto_8
    const-string v52, "key_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/a;->b(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_4f

    .line 728
    const-string v52, "KEY_SHOW_SUSPENSION_"

    const/16 v53, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 729
    const-string v52, "SHARE_TYPE"

    const/16 v53, 0xb

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    const-string v52, "SHARE_THUMB"

    const-string v53, "http://qiniu.jiliguala.com//wml/storylesson/icon/thumb.png"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    :cond_4f
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/a;->c(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_50

    .line 733
    const-string v52, "KEY_SHOW_SUSPENSION_"

    const/16 v53, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 734
    const-string v52, "HIDE SUSPENSION SHARE"

    const/16 v53, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 735
    const-string v52, "source=Home"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v52

    if-eqz v52, :cond_53

    .line 736
    const-string v52, "KEY_PURCHASE_SOURCE"

    const-string v53, "Home"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    :cond_50
    :goto_9
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/a;->d(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_51

    .line 742
    const-string v52, "KEY_SHOW_SUSPENSION_"

    const/16 v53, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 743
    const-string v52, "HIDE SUSPENSION SHARE"

    const/16 v53, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 746
    :cond_51
    const/high16 v52, 0x10000000

    move-object/from16 v0, v21

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 747
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 748
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v52, v0

    if-eqz v52, :cond_0

    .line 749
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v52, 0x7f01001f

    const v53, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 752
    .end local v21    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v11

    .line 754
    .local v11, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v52, "\u94fe\u63a5\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u786e\u8ba4\u5df2\u5b89\u88c5\u6d4f\u89c8\u5668"

    invoke-static/range {v52 .. v52}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 724
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_52
    :try_start_b
    new-instance v21, Landroid/content/Intent;

    const-class v52, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v21    # "intent":Landroid/content/Intent;
    goto/16 :goto_8

    .line 738
    :cond_53
    const-string v52, "KEY_PURCHASE_SOURCE"

    const-string v53, "Roadmap"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_9

    .line 434
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v3    # "a":Ljava/lang/String;
    .restart local v5    # "bid":Ljava/lang/String;
    .restart local v7    # "chl":Ljava/lang/String;
    .restart local v8    # "chlNm":Ljava/lang/String;
    .restart local v10    # "desc1":Ljava/lang/String;
    .restart local v13    # "flr":Ljava/lang/String;
    .restart local v14    # "flr_num":I
    .restart local v15    # "forumIntent":Landroid/content/Intent;
    .restart local v19    # "id":Ljava/lang/String;
    .restart local v20    # "index":I
    .restart local v24    # "lv":Ljava/lang/String;
    .restart local v26    # "params":[Ljava/lang/String;
    .restart local v28    # "pid":Ljava/lang/String;
    .restart local v29    # "portrait":Ljava/lang/String;
    .restart local v30    # "rid":Ljava/lang/String;
    .restart local v31    # "role":Ljava/lang/String;
    .restart local v33    # "sceneid":Ljava/lang/String;
    .restart local v36    # "sharecontent":Ljava/lang/String;
    .restart local v37    # "sharethmb":Ljava/lang/String;
    .restart local v38    # "sharettl":Ljava/lang/String;
    .restart local v39    # "shareurl":Ljava/lang/String;
    .restart local v41    # "source":Ljava/lang/String;
    .restart local v42    # "templeteid":Ljava/lang/String;
    .restart local v43    # "thmb1":Ljava/lang/String;
    .restart local v45    # "ttl1":Ljava/lang/String;
    .restart local v46    # "typ":Ljava/lang/String;
    .restart local v47    # "type":Ljava/lang/String;
    .restart local v48    # "uid":Ljava/lang/String;
    .restart local v49    # "url":Ljava/lang/String;
    :catch_5
    move-exception v52

    goto/16 :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "schemeConstant"    # Ljava/lang/String;

    .prologue
    .line 793
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid scheme constants."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    const/4 v0, 0x0

    .line 799
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 806
    const-string v3, "?"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 807
    .local v2, "q_mark_index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-object v0

    .line 810
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 813
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "parameters":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 818
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 819
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    goto :goto_0

    .line 821
    :cond_2
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "all_params":[Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/jiliguala/niuwa/logic/h/a;->aw:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "schemaUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 769
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "story-pretail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "story-course"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/jiliguala/niuwa/logic/h/a;->au:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1
    .param p0, "schemaUrl"    # Ljava/lang/String;

    .prologue
    .line 777
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    const/4 v0, 0x0

    .line 780
    :goto_0
    return v0

    :cond_0
    const-string v0, "onlinecourse-purchase"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/jiliguala/niuwa/logic/h/a;->av:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1
    .param p0, "schemaUrl"    # Ljava/lang/String;

    .prologue
    .line 785
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const/4 v0, 0x0

    .line 788
    :goto_0
    return v0

    :cond_0
    const-string v0, "nougat-page"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/jiliguala/niuwa/logic/h/a;->at:Ljava/lang/String;

    return-object v0
.end method
