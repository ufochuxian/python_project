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

.field public static final J:Ljava/lang/String; = "uid="

.field public static final K:Ljava/lang/String; = "rid="

.field public static final L:Ljava/lang/String; = "pid="

.field public static final M:Ljava/lang/String; = "url="

.field public static final N:Ljava/lang/String; = "flr="

.field public static final O:Ljava/lang/String; = "channel="

.field public static final P:Ljava/lang/String; = "channel_name="

.field public static final Q:Ljava/lang/String; = "id="

.field public static final R:Ljava/lang/String; = "index="

.field public static final S:Ljava/lang/String; = "type="

.field public static final T:Ljava/lang/String; = "a="

.field public static final U:Ljava/lang/String; = "bid="

.field public static final V:Ljava/lang/String; = "typ="

.field public static final W:Ljava/lang/String; = "lv="

.field public static final X:Ljava/lang/String; = "source="

.field public static final Y:Ljava/lang/String; = "role="

.field public static final Z:Ljava/lang/String; = "templateid="

.field public static final a:Ljava/lang/String;

.field public static final aa:Ljava/lang/String; = "sceneid="

.field public static final ab:Ljava/lang/String; = "portrait="

.field public static final ac:Ljava/lang/String; = "theme="

.field public static final ad:Ljava/lang/String; = "style="

.field public static final ae:Ljava/lang/String; = "thmb1="

.field public static final af:Ljava/lang/String; = "ttl1="

.field public static final ag:Ljava/lang/String; = "desc1="

.field public static final ah:Ljava/lang/String; = "thmb2="

.field public static final ai:Ljava/lang/String; = "ttl2="

.field public static final aj:Ljava/lang/String; = "desc2="

.field public static final ak:Ljava/lang/String; = "sharethmb="

.field public static final al:Ljava/lang/String; = "sharecontent="

.field public static final am:Ljava/lang/String; = "sharettl="

.field public static final an:Ljava/lang/String; = "shareurl="

.field public static final ao:Ljava/lang/String; = "red"

.field public static final ap:Ljava/lang/String; = "white"

.field public static aq:Landroid/support/v4/app/ag; = null

.field static ar:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener; = null

.field private static as:Ljava/lang/String; = null

.field private static at:Ljava/lang/String; = null

.field private static au:Ljava/lang/String; = null

.field private static av:Ljava/lang/String; = null

.field private static aw:Ljava/lang/String; = null

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
    .line 64
    const-class v0, Lcom/jiliguala/niuwa/logic/h/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/h/a;->a:Ljava/lang/String;

    .line 176
    new-instance v0, Lcom/jiliguala/niuwa/logic/h/a$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/h/a$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/h/a;->ar:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/logic/h/a;->aw:Ljava/lang/String;

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

    .line 782
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 784
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p0, v3

    .line 785
    .local v0, "item":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 786
    .local v2, "result":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 788
    .end local v0    # "item":Ljava/lang/String;
    .end local v2    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 791
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "schemaUrl"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jiliguala/niuwa/logic/h/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V

    .line 224
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/ag;)V
    .locals 55
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "schemaUrl"    # Ljava/lang/String;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/ag;

    .prologue
    .line 229
    sput-object p2, Lcom/jiliguala/niuwa/logic/h/a;->aq:Landroid/support/v4/app/ag;

    .line 230
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_1

    .line 720
    .end local p0    # "ctx":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v51

    if-eqz v51, :cond_0

    .line 240
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 245
    .local v22, "jlglUri":Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v33

    .line 247
    .local v33, "scheme":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_0

    .line 253
    :try_start_0
    const-string v51, "jlgl"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_47

    .line 255
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 256
    .local v25, "params":[Ljava/lang/String;
    const/16 v29, 0x0

    .line 257
    .local v29, "rid":Ljava/lang/String;
    const/16 v27, 0x0

    .line 258
    .local v27, "pid":Ljava/lang/String;
    const/16 v48, 0x0

    .line 259
    .local v48, "url":Ljava/lang/String;
    const-string v13, "0"

    .line 260
    .local v13, "flr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 261
    .local v7, "chl":Ljava/lang/String;
    const/4 v8, 0x0

    .line 262
    .local v8, "chlNm":Ljava/lang/String;
    const/16 v47, 0x0

    .line 263
    .local v47, "uid":Ljava/lang/String;
    const/16 v18, 0x0

    .line 264
    .local v18, "id":Ljava/lang/String;
    const/16 v46, 0x0

    .line 265
    .local v46, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 266
    .local v3, "a":Ljava/lang/String;
    const/16 v45, 0x0

    .line 267
    .local v45, "typ":Ljava/lang/String;
    const/4 v5, 0x0

    .line 268
    .local v5, "bid":Ljava/lang/String;
    const/16 v23, 0x0

    .line 269
    .local v23, "lv":Ljava/lang/String;
    const/16 v40, 0x0

    .line 270
    .local v40, "source":Ljava/lang/String;
    const/16 v30, 0x0

    .line 271
    .local v30, "role":Ljava/lang/String;
    const/16 v41, 0x0

    .line 272
    .local v41, "templeteid":Ljava/lang/String;
    const/16 v32, 0x0

    .line 273
    .local v32, "sceneid":Ljava/lang/String;
    const/16 v28, 0x0

    .line 274
    .local v28, "portrait":Ljava/lang/String;
    const/16 v51, 0x0

    sput-object v51, Lcom/jiliguala/niuwa/logic/h/a;->aw:Ljava/lang/String;

    .line 275
    const/16 v51, 0x0

    sput-object v51, Lcom/jiliguala/niuwa/logic/h/a;->av:Ljava/lang/String;

    .line 276
    const/16 v42, 0x0

    .line 277
    .local v42, "thmb1":Ljava/lang/String;
    const/16 v44, 0x0

    .line 278
    .local v44, "ttl1":Ljava/lang/String;
    const/4 v10, 0x0

    .line 279
    .local v10, "desc1":Ljava/lang/String;
    const/16 v51, 0x0

    sput-object v51, Lcom/jiliguala/niuwa/logic/h/a;->as:Ljava/lang/String;

    .line 280
    const/16 v51, 0x0

    sput-object v51, Lcom/jiliguala/niuwa/logic/h/a;->at:Ljava/lang/String;

    .line 281
    const/16 v51, 0x0

    sput-object v51, Lcom/jiliguala/niuwa/logic/h/a;->au:Ljava/lang/String;

    .line 282
    const/16 v36, 0x0

    .line 283
    .local v36, "sharethmb":Ljava/lang/String;
    const/16 v37, 0x0

    .line 284
    .local v37, "sharettl":Ljava/lang/String;
    const/16 v35, 0x0

    .line 285
    .local v35, "sharecontent":Ljava/lang/String;
    const/16 v38, 0x0

    .line 286
    .local v38, "shareurl":Ljava/lang/String;
    const/16 v19, 0x0

    .line 287
    .local v19, "index":I
    if-eqz v25, :cond_21

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v51, v0

    if-lez v51, :cond_21

    .line 288
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v52, v0

    const/16 v51, 0x0

    :goto_1
    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_21

    aget-object v24, v25, v51

    .line 289
    .local v24, "param":Ljava/lang/String;
    const-string v53, "rid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_3

    .line 290
    const-string v53, "rid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "rid="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 288
    :cond_2
    :goto_2
    add-int/lit8 v51, v51, 0x1

    goto :goto_1

    .line 291
    :cond_3
    const-string v53, "pid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_4

    .line 292
    const-string v53, "pid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "pid="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_2

    .line 293
    :cond_4
    const-string v53, "url="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_5

    .line 294
    const-string v53, "url="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "url="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v48

    goto :goto_2

    .line 295
    :cond_5
    const-string v53, "flr="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_6

    .line 296
    const-string v53, "flr="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "flr="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 297
    :cond_6
    const-string v53, "channel="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_7

    .line 298
    const-string v53, "channel="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "channel="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 299
    :cond_7
    const-string v53, "channel_name="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_8

    .line 300
    const-string v53, "channel_name="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "channel_name="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 301
    :cond_8
    const-string v53, "uid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_9

    .line 302
    const-string v53, "uid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "uid="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_2

    .line 303
    :cond_9
    const-string v53, "id="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_a

    .line 304
    const-string v53, "id="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "id="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 305
    :cond_a
    const-string v53, "index="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_b

    .line 306
    const-string v53, "index="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "index="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v19

    goto/16 :goto_2

    .line 307
    :cond_b
    const-string v53, "type="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_c

    .line 308
    const-string v53, "type="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "type="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v46

    goto/16 :goto_2

    .line 309
    :cond_c
    const-string v53, "a="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_d

    .line 310
    const-string v53, "a="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "a="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 311
    :cond_d
    const-string v53, "bid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_e

    .line 312
    const-string v53, "bid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "bid="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 313
    :cond_e
    const-string v53, "typ="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_f

    .line 314
    const-string v53, "typ="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "typ="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_2

    .line 315
    :cond_f
    const-string v53, "lv="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_10

    .line 316
    const-string v53, "lv="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "lv="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_2

    .line 317
    :cond_10
    const-string v53, "source="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_11

    .line 318
    const-string v53, "source="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "source="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v40

    goto/16 :goto_2

    .line 319
    :cond_11
    const-string v53, "role="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_12

    .line 320
    const-string v53, "role="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "role="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_2

    .line 321
    :cond_12
    const-string v53, "templateid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_13

    .line 322
    const-string v53, "templateid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "templateid="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_2

    .line 323
    :cond_13
    const-string v53, "sceneid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_14

    .line 324
    const-string v53, "sceneid="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "sceneid="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_2

    .line 325
    :cond_14
    const-string v53, "portrait="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_15

    .line 326
    const-string v53, "portrait="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "portrait="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_2

    .line 327
    :cond_15
    const-string v53, "theme="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_16

    .line 328
    const-string v53, "theme="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "theme="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    sput-object v53, Lcom/jiliguala/niuwa/logic/h/a;->aw:Ljava/lang/String;

    goto/16 :goto_2

    .line 715
    .end local v3    # "a":Ljava/lang/String;
    .end local v5    # "bid":Ljava/lang/String;
    .end local v7    # "chl":Ljava/lang/String;
    .end local v8    # "chlNm":Ljava/lang/String;
    .end local v10    # "desc1":Ljava/lang/String;
    .end local v13    # "flr":Ljava/lang/String;
    .end local v18    # "id":Ljava/lang/String;
    .end local v19    # "index":I
    .end local v23    # "lv":Ljava/lang/String;
    .end local v24    # "param":Ljava/lang/String;
    .end local v25    # "params":[Ljava/lang/String;
    .end local v27    # "pid":Ljava/lang/String;
    .end local v28    # "portrait":Ljava/lang/String;
    .end local v29    # "rid":Ljava/lang/String;
    .end local v30    # "role":Ljava/lang/String;
    .end local v32    # "sceneid":Ljava/lang/String;
    .end local v35    # "sharecontent":Ljava/lang/String;
    .end local v36    # "sharethmb":Ljava/lang/String;
    .end local v37    # "sharettl":Ljava/lang/String;
    .end local v38    # "shareurl":Ljava/lang/String;
    .end local v40    # "source":Ljava/lang/String;
    .end local v41    # "templeteid":Ljava/lang/String;
    .end local v42    # "thmb1":Ljava/lang/String;
    .end local v44    # "ttl1":Ljava/lang/String;
    .end local v45    # "typ":Ljava/lang/String;
    .end local v46    # "type":Ljava/lang/String;
    .end local v47    # "uid":Ljava/lang/String;
    .end local v48    # "url":Ljava/lang/String;
    .end local p0    # "ctx":Landroid/content/Context;
    :catch_0
    move-exception v51

    goto/16 :goto_0

    .line 329
    .restart local v3    # "a":Ljava/lang/String;
    .restart local v5    # "bid":Ljava/lang/String;
    .restart local v7    # "chl":Ljava/lang/String;
    .restart local v8    # "chlNm":Ljava/lang/String;
    .restart local v10    # "desc1":Ljava/lang/String;
    .restart local v13    # "flr":Ljava/lang/String;
    .restart local v18    # "id":Ljava/lang/String;
    .restart local v19    # "index":I
    .restart local v23    # "lv":Ljava/lang/String;
    .restart local v24    # "param":Ljava/lang/String;
    .restart local v25    # "params":[Ljava/lang/String;
    .restart local v27    # "pid":Ljava/lang/String;
    .restart local v28    # "portrait":Ljava/lang/String;
    .restart local v29    # "rid":Ljava/lang/String;
    .restart local v30    # "role":Ljava/lang/String;
    .restart local v32    # "sceneid":Ljava/lang/String;
    .restart local v35    # "sharecontent":Ljava/lang/String;
    .restart local v36    # "sharethmb":Ljava/lang/String;
    .restart local v37    # "sharettl":Ljava/lang/String;
    .restart local v38    # "shareurl":Ljava/lang/String;
    .restart local v40    # "source":Ljava/lang/String;
    .restart local v41    # "templeteid":Ljava/lang/String;
    .restart local v42    # "thmb1":Ljava/lang/String;
    .restart local v44    # "ttl1":Ljava/lang/String;
    .restart local v45    # "typ":Ljava/lang/String;
    .restart local v46    # "type":Ljava/lang/String;
    .restart local v47    # "uid":Ljava/lang/String;
    .restart local v48    # "url":Ljava/lang/String;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_16
    const-string v53, "style="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_17

    .line 330
    const-string v53, "style="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "style="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    sput-object v53, Lcom/jiliguala/niuwa/logic/h/a;->av:Ljava/lang/String;

    goto/16 :goto_2

    .line 331
    :cond_17
    const-string v53, "thmb1="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_18

    .line 332
    const-string v53, "thmb1="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "thmb1="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_2

    .line 333
    :cond_18
    const-string v53, "ttl1="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_19

    .line 334
    const-string v53, "ttl1="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "ttl1="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_2

    .line 335
    :cond_19
    const-string v53, "desc1="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1a

    .line 336
    const-string v53, "desc1="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "desc1="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 337
    :cond_1a
    const-string v53, "thmb2="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1b

    .line 338
    const-string v53, "thmb2="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "thmb2="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    sput-object v53, Lcom/jiliguala/niuwa/logic/h/a;->as:Ljava/lang/String;

    goto/16 :goto_2

    .line 339
    :cond_1b
    const-string v53, "ttl2="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1c

    .line 340
    const-string v53, "ttl2="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "ttl2="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    sput-object v53, Lcom/jiliguala/niuwa/logic/h/a;->at:Ljava/lang/String;

    goto/16 :goto_2

    .line 341
    :cond_1c
    const-string v53, "desc2="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1d

    .line 342
    const-string v53, "desc2="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "desc2="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    sput-object v53, Lcom/jiliguala/niuwa/logic/h/a;->au:Ljava/lang/String;

    goto/16 :goto_2

    .line 343
    :cond_1d
    const-string v53, "sharethmb="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1e

    .line 344
    const-string v53, "sharethmb="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "sharethmb="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_2

    .line 345
    :cond_1e
    const-string v53, "sharettl="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_1f

    .line 346
    const-string v53, "sharettl="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "sharettl="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_2

    .line 347
    :cond_1f
    const-string v53, "sharecontent="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_20

    .line 348
    const-string v53, "sharecontent="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "sharecontent="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_2

    .line 349
    :cond_20
    const-string v53, "shareurl="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_2

    .line 350
    const-string v53, "shareurl="

    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    const-string v54, "shareurl="

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v53, v53, v54

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v53

    const-string v54, "utf-8"

    invoke-static/range {v53 .. v54}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_2

    .line 355
    .end local v24    # "param":Ljava/lang/String;
    :cond_21
    const-string v51, "jlgl://video"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_26

    .line 356
    new-instance v49, Landroid/content/Intent;

    invoke-direct/range {v49 .. v49}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v49, "videoIntent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/video/VideoActivity;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 358
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_22

    .line 359
    const-string v51, "rid"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    :cond_22
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_23

    .line 362
    const-string v51, "channel"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    :cond_23
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_24

    .line 365
    const-string v51, "channel_nm"

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    :cond_24
    const/high16 v51, 0x10000000

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    const-string v51, "mode=lesson"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 369
    .local v17, "hasMode":Z
    if-eqz v17, :cond_25

    .line 371
    const-string v51, "from_practise"

    const/16 v52, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    const-string v51, "has_model"

    const/16 v52, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 375
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 376
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 378
    .end local v17    # "hasMode":Z
    .end local v49    # "videoIntent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_26
    const-string v51, "jlgl://audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_2a

    .line 382
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 383
    .local v4, "audioIntent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/audio/activity/AudioActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 384
    const-string v51, "rid"

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_27

    .line 386
    const-string v51, "channel"

    move-object/from16 v0, v51

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    :cond_27
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_28

    .line 389
    const-string v51, "channel_nm"

    move-object/from16 v0, v51

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    :cond_28
    const-string v51, "extra"

    const/16 v52, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    const/high16 v51, 0x10000000

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 393
    const-string v51, "mode=lesson"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 394
    .restart local v17    # "hasMode":Z
    if-eqz v17, :cond_29

    .line 396
    const-string v51, "from_practise"

    const/16 v52, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    const-string v51, "has_model"

    const/16 v52, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    const-string v51, "hardwareAccelerated"

    const/16 v52, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    :cond_29
    const-string v51, "loop=true"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    .line 401
    .local v21, "isLoop":Z
    const-string v51, "is_loop"

    move-object/from16 v0, v51

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 403
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 404
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 406
    .end local v4    # "audioIntent":Landroid/content/Intent;
    .end local v17    # "hasMode":Z
    .end local v21    # "isLoop":Z
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_2a
    const-string v51, "jlgl://forum"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_2b

    .line 407
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_0

    .line 410
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 411
    .local v15, "forumIntent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 412
    const-string v51, "rid"

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    const/4 v14, 0x0

    .line 415
    .local v14, "flr_num":I
    :try_start_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v14

    .line 419
    :goto_3
    :try_start_2
    const-string v51, "flr"

    move-object/from16 v0, v51

    invoke-virtual {v15, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    const/high16 v51, 0x10000000

    move/from16 v0, v51

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 421
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 422
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 423
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 425
    .end local v14    # "flr_num":I
    .end local v15    # "forumIntent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_2b
    const-string v51, "jlgl://image"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_2c

    .line 426
    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_0

    .line 429
    if-eqz p2, :cond_0

    .line 430
    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;Ljava/lang/String;)Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;

    move-result-object v16

    .line 431
    .local v16, "fragment":Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;->show(Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 433
    .end local v16    # "fragment":Lcom/jiliguala/niuwa/module/forum/detail/FullScreenPicDialogFragment;
    :cond_2c
    const-string v51, "jlgl://flashcard"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_2d

    .line 434
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_0

    .line 437
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 438
    .local v12, "flashcardIntent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/flashcard/activity/FlashCardActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 439
    const-string v51, "rid"

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const/high16 v51, 0x10000000

    move/from16 v0, v51

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 442
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 443
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 445
    .end local v12    # "flashcardIntent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_2d
    const-string v51, "jlgl://root"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_2e

    .line 446
    new-instance v31, Landroid/content/Intent;

    invoke-direct/range {v31 .. v31}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v31, "rootIntent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 448
    const/high16 v51, 0x4000000

    move-object/from16 v0, v31

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    const/high16 v51, 0x10000000

    move-object/from16 v0, v31

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 450
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 451
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 452
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 454
    .end local v31    # "rootIntent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_2e
    const-string v51, "jlgl://user"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_2f

    .line 456
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 457
    .local v26, "personalInfoIntent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/settings/PersonalInfoPageActivity;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 458
    const-string v51, "KEY_UID"

    move-object/from16 v0, v26

    move-object/from16 v1, v51

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v51, "KEY_FROM_AVA_CLICK"

    const/16 v52, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 460
    const/high16 v51, 0x10000000

    move-object/from16 v0, v26

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 462
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 463
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 466
    .end local v26    # "personalInfoIntent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_2f
    const-string v51, "jlgl://lesson"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_31

    .line 467
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v51

    if-nez v51, :cond_30

    .line 469
    :try_start_3
    new-instance v20, Landroid/content/Intent;

    const-class v51, Lcom/jiliguala/niuwa/module/qualitycourse/InteractActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    .local v20, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v6, "bundle":Landroid/os/Bundle;
    new-instance v9, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;

    invoke-direct {v9}, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;-><init>()V

    .line 472
    .local v9, "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    move-object/from16 v0, v46

    iput-object v0, v9, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->cat:Ljava/lang/String;

    .line 473
    const-string v51, "course_cat"

    move-object/from16 v0, v51

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 474
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 475
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 476
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 477
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v9    # "courseCat":Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
    .end local v20    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v11

    .line 478
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 482
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_30
    :try_start_5
    new-instance v20, Landroid/content/Intent;

    const-class v51, Lcom/jiliguala/niuwa/module/course/main/CoursePeekerActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .restart local v20    # "intent":Landroid/content/Intent;
    const-string v51, "KEY_COURSE_ID"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v51, "KEY_SUBCOURSE_INDEX"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 487
    .end local v20    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v11

    .line 488
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v11}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 492
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_31
    const-string v51, "jlgl://guabiout"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_32

    .line 493
    invoke-static/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/duiba/activity/GuaCoinActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v20

    .line 494
    .restart local v20    # "intent":Landroid/content/Intent;
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 496
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 497
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 499
    .end local v20    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_32
    const-string v51, "jlgl://es"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_33

    .line 501
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-static {v0, v3, v1}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    .line 502
    .restart local v20    # "intent":Landroid/content/Intent;
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 504
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 505
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 507
    .end local v20    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_33
    const-string v51, "jlgl://story"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_35

    .line 508
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 509
    .restart local v20    # "intent":Landroid/content/Intent;
    const-string v51, "JLGL://story_lessons"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_34

    .line 511
    const-class v51, Lcom/jiliguala/niuwa/module/story/QualityStoryLessonActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 512
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 514
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 515
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 518
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_34
    const-class v51, Lcom/jiliguala/niuwa/module/story/StoryActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 519
    new-instance v43, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    invoke-direct/range {v43 .. v43}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;-><init>()V

    .line 520
    .local v43, "ticket":Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    move-object/from16 v0, v43

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;->setResourceId(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;

    .line 521
    const-string v51, "PARAM_COURSE_TICKET"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 522
    const-string v51, "PARAM_STORY_FROM_COURSE"

    const/16 v52, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 523
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 525
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 526
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f010021

    const v52, 0x7f010014

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 529
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v43    # "ticket":Lcom/jiliguala/niuwa/module/course/model/SubCourseTicket;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_35
    const-string v51, "jlgl://paidlist"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_36

    .line 530
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 531
    .restart local v20    # "intent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/interact/course/purchased/PurchasedGoodsActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 532
    const-string v51, "purchased_goods_index"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 533
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 535
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 536
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 538
    .end local v20    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_36
    const-string v51, "JLGL://bundle"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_37

    .line 539
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 540
    .restart local v20    # "intent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/interact/course/bundle/InteractLessonBundleActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 541
    const-string v51, "id"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 543
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 544
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 545
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 547
    .end local v20    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_37
    const-string v51, "JLGL://order"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_38

    .line 548
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 549
    .restart local v20    # "intent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/order/OrderDetailActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 550
    const-string v51, "order_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 552
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 553
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 554
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 556
    .end local v20    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_38
    const-string v51, "JLGL://report"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_39

    .line 557
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 558
    .restart local v20    # "intent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/mcphonics/report/MCPhonicsReportDetailActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 559
    const-string v51, "bid"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v51, "typ"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v51, "lv"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 563
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 564
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 565
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 567
    .end local v20    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_39
    const-string v51, "jlgl://classpurchase"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_3e

    .line 568
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 569
    .restart local v20    # "intent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 570
    const-string v51, "KEY_SHOW_SUSPENSION_"

    const/16 v52, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 571
    const-string v51, "HIDE SUSPENSION SHARE"

    const/16 v52, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    const-string v51, "id"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v51, "Home"

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_3a

    .line 574
    const-string v51, "KEY_PURCHASE_SOURCE"

    const-string v52, "Home"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    :goto_4
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v52, Lcom/jiliguala/niuwa/logic/l/f;->p:Ljava/lang/String;

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "onlinecourse-purchase.html?source=%s&bid=%s"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x2

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aput-object v40, v52, v53

    const/16 v53, 0x1

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v54

    aput-object v54, v52, v53

    invoke-static/range {v51 .. v52}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    .line 585
    const-string v51, "key_url"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 588
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 589
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 575
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_3a
    const-string v51, "1v1Detail View"

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_3b

    .line 576
    const-string v51, "KEY_PURCHASE_SOURCE"

    const-string v52, "1v1Detail View"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 577
    :cond_3b
    const-string v51, "Notification"

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_3c

    .line 578
    const-string v51, "KEY_PURCHASE_SOURCE"

    const-string v52, "Notification"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 579
    :cond_3c
    const-string v51, "Push"

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_3d

    .line 580
    const-string v51, "KEY_PURCHASE_SOURCE"

    const-string v52, "Push"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 582
    :cond_3d
    const-string v51, "KEY_PURCHASE_SOURCE"

    const-string v52, "Roadmap"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 591
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_3e
    const-string v51, "JLGL://classlist"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_3f

    .line 592
    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v52, Lcom/jiliguala/niuwa/logic/l/f;->p:Ljava/lang/String;

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "classroom-entry.html?role=%s"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x1

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aput-object v30, v52, v53

    invoke-static/range {v51 .. v52}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    .line 594
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 595
    .restart local v20    # "intent":Landroid/content/Intent;
    const-class v51, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 596
    const-string v51, "KEY_SHOW_SUSPENSION_"

    const/16 v52, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    const-string v51, "HIDE SUSPENSION SHARE"

    const/16 v52, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 598
    const-string v51, "key_url"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 601
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 602
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 604
    .end local v20    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_3f
    const-string v51, "JLGL://class"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_40

    .line 605
    const-string v51, "\u8bf7\u4f7f\u7528iPad\uff0fiPhone\u8fdb\u5165\u6559\u5ba4\uff01"

    invoke-static/range {v51 .. v51}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 606
    :cond_40
    const-string v51, "JLGL://memberrenewal"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_41

    .line 607
    invoke-static/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goMemberRenewal(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 608
    :cond_41
    const-string v51, "JLGL://subscribe"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_42

    .line 609
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/ae;->a(Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/ae;->b(Ljava/lang/String;)V

    .line 611
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/ae;->a()Lcom/jiliguala/niuwa/common/util/ae;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/ae;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 612
    :cond_42
    const-string v51, "JLGL://play_video"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_43

    .line 613
    new-instance v20, Landroid/content/Intent;

    const-class v51, Lcom/jiliguala/niuwa/common/Activity/VideoViewActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    .restart local v20    # "intent":Landroid/content/Intent;
    const-string v50, ""
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 616
    .local v50, "videoUrl":Ljava/lang/String;
    :try_start_7
    const-string v51, "utf-8"

    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v50

    .line 620
    :goto_5
    :try_start_8
    const-string v51, "key_url"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v51, "KEY_PORTRAIT"

    const-string v52, "1"

    move-object/from16 v0, v52

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 617
    :catch_3
    move-exception v11

    .line 618
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    .line 623
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v50    # "videoUrl":Ljava/lang/String;
    :cond_43
    const-string v51, "JLGL://newphoni-purchase"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_44

    .line 624
    invoke-static/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/BuyUtil;->goL1Ph1v1(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 625
    :cond_44
    const-string v51, "JLGL://speakcard"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_45

    .line 626
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 627
    .restart local v6    # "bundle":Landroid/os/Bundle;
    new-instance v20, Landroid/content/Intent;

    const-class v51, Lcom/jiliguala/niuwa/module/speak/ParentSpeakActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    .restart local v20    # "intent":Landroid/content/Intent;
    const-string v51, "rid"

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v51, "subtask_id"

    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 631
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 632
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_45
    const-string v51, "jlgl://sharepopup"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_0

    .line 633
    invoke-static/range {p2 .. p2}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;

    move-result-object v39

    .line 634
    .local v39, "simpleShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;
    new-instance v34, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;

    invoke-direct/range {v34 .. v34}, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;-><init>()V

    .line 635
    .local v34, "shareInfoTemplete":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mThumbUrl:Ljava/lang/String;

    .line 636
    move-object/from16 v0, v38

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareUrl:Ljava/lang/String;

    .line 637
    move-object/from16 v0, v37

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitle:Ljava/lang/String;

    .line 638
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mAbstract:Ljava/lang/String;

    .line 639
    const-string v51, "Treasure"

    move-object/from16 v0, v51

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mSource:Ljava/lang/String;

    .line 640
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareType:I

    .line 641
    const v51, 0x7f0801eb

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->topImgIconPlaceHolder:I

    .line 642
    sget-object v51, Lcom/jiliguala/niuwa/logic/h/a;->av:Ljava/lang/String;

    const-string v52, "red"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_46

    .line 643
    const v51, 0x7f0600fc

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitleTxtColor:I

    .line 644
    const v51, 0x7f060095

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    .line 645
    const v51, 0x7f0800af

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    .line 646
    const v51, 0x7f0801d4

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mWeiXinIcon:I

    .line 647
    const v51, 0x7f08036a

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->bottomStyle:I

    .line 655
    :goto_6
    move-object/from16 v0, v44

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->title:Ljava/lang/String;

    .line 656
    move-object/from16 v0, v34

    iput-object v10, v0, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->subTitle:Ljava/lang/String;

    .line 657
    const v51, 0x3f358106    # 0.709f

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mRatio:F

    .line 658
    move-object/from16 v0, v42

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->topImgUrl:Ljava/lang/String;

    .line 659
    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->setShareInfoTemplete(Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;)V

    .line 660
    sget-object v51, Lcom/jiliguala/niuwa/logic/h/a;->ar:Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;

    move-object/from16 v0, v39

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->setShareSuccessListener(Lcom/jiliguala/niuwa/module/course/main/lisetners/ShareSuccessListener;)V

    .line 661
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;->show(Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 649
    :cond_46
    const v51, 0x7f06002e

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mTitleTxtColor:I

    .line 650
    const v51, 0x7f0600fc

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnTxtColor:I

    .line 651
    const v51, 0x7f0800a0

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mShareBtnStyle:I

    .line 652
    const v51, 0x7f0801d6

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->mWeiXinIcon:I

    .line 653
    const v51, 0x7f080373

    move/from16 v0, v51

    move-object/from16 v1, v34

    iput v0, v1, Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;->bottomStyle:I

    goto :goto_6

    .line 665
    .end local v3    # "a":Ljava/lang/String;
    .end local v5    # "bid":Ljava/lang/String;
    .end local v7    # "chl":Ljava/lang/String;
    .end local v8    # "chlNm":Ljava/lang/String;
    .end local v10    # "desc1":Ljava/lang/String;
    .end local v13    # "flr":Ljava/lang/String;
    .end local v18    # "id":Ljava/lang/String;
    .end local v19    # "index":I
    .end local v23    # "lv":Ljava/lang/String;
    .end local v25    # "params":[Ljava/lang/String;
    .end local v27    # "pid":Ljava/lang/String;
    .end local v28    # "portrait":Ljava/lang/String;
    .end local v29    # "rid":Ljava/lang/String;
    .end local v30    # "role":Ljava/lang/String;
    .end local v32    # "sceneid":Ljava/lang/String;
    .end local v34    # "shareInfoTemplete":Lcom/jiliguala/niuwa/logic/network/json/ShareInfoTemplete;
    .end local v35    # "sharecontent":Ljava/lang/String;
    .end local v36    # "sharethmb":Ljava/lang/String;
    .end local v37    # "sharettl":Ljava/lang/String;
    .end local v38    # "shareurl":Ljava/lang/String;
    .end local v39    # "simpleShareFragment":Lcom/jiliguala/niuwa/module/course/main/fragment/SimpleShareFragment;
    .end local v40    # "source":Ljava/lang/String;
    .end local v41    # "templeteid":Ljava/lang/String;
    .end local v42    # "thmb1":Ljava/lang/String;
    .end local v44    # "ttl1":Ljava/lang/String;
    .end local v45    # "typ":Ljava/lang/String;
    .end local v46    # "type":Ljava/lang/String;
    .end local v47    # "uid":Ljava/lang/String;
    .end local v48    # "url":Ljava/lang/String;
    :cond_47
    const-string v51, "http"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-nez v51, :cond_48

    const-string v51, "https"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/logic/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_0

    .line 667
    :cond_48
    const-string v51, "wap.koudaitong.com"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_49

    .line 668
    const-string v51, "-relay-"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/jiliguala/niuwa/module/youzan/YzH5Activity;->makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    .line 669
    .restart local v20    # "intent":Landroid/content/Intent;
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 670
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 671
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 672
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 677
    .end local v20    # "intent":Landroid/content/Intent;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_49
    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/a;->c(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_4d

    .line 678
    new-instance v20, Landroid/content/Intent;

    const-class v51, Lcom/jiliguala/niuwa/module/NewRoadMap/OneVOnePurchaseActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 682
    .restart local v20    # "intent":Landroid/content/Intent;
    :goto_7
    const-string v51, "key_url"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/a;->b(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_4a

    .line 684
    const-string v51, "KEY_SHOW_SUSPENSION_"

    const/16 v52, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 685
    const-string v51, "SHARE_TYPE"

    const/16 v52, 0xb

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    const-string v51, "SHARE_THUMB"

    const-string v52, "http://qiniu.jiliguala.com//wml/storylesson/icon/thumb.png"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    :cond_4a
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/a;->c(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_4b

    .line 689
    const-string v51, "KEY_SHOW_SUSPENSION_"

    const/16 v52, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 690
    const-string v51, "HIDE SUSPENSION SHARE"

    const/16 v52, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 691
    const-string v51, "source=Home"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v51

    if-eqz v51, :cond_4e

    .line 692
    const-string v51, "KEY_PURCHASE_SOURCE"

    const-string v52, "Home"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    :cond_4b
    :goto_8
    invoke-static/range {p1 .. p1}, Lcom/jiliguala/niuwa/logic/h/a;->d(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_4c

    .line 698
    const-string v51, "KEY_SHOW_SUSPENSION_"

    const/16 v52, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 699
    const-string v51, "HIDE SUSPENSION SHARE"

    const/16 v52, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 702
    :cond_4c
    const/high16 v51, 0x10000000

    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 703
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 704
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 705
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "ctx":Landroid/content/Context;
    const v51, 0x7f01001d

    const v52, 0x7f010013

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 708
    .end local v20    # "intent":Landroid/content/Intent;
    :catch_4
    move-exception v11

    .line 710
    .local v11, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v51, "\u94fe\u63a5\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u786e\u8ba4\u5df2\u5b89\u88c5\u6d4f\u89c8\u5668"

    invoke-static/range {v51 .. v51}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 680
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local p0    # "ctx":Landroid/content/Context;
    :cond_4d
    :try_start_b
    new-instance v20, Landroid/content/Intent;

    const-class v51, Lcom/jiliguala/niuwa/module/webview/InternalWebActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v20    # "intent":Landroid/content/Intent;
    goto/16 :goto_7

    .line 694
    :cond_4e
    const-string v51, "KEY_PURCHASE_SOURCE"

    const-string v52, "Roadmap"

    move-object/from16 v0, v20

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_8

    .line 416
    .end local v20    # "intent":Landroid/content/Intent;
    .restart local v3    # "a":Ljava/lang/String;
    .restart local v5    # "bid":Ljava/lang/String;
    .restart local v7    # "chl":Ljava/lang/String;
    .restart local v8    # "chlNm":Ljava/lang/String;
    .restart local v10    # "desc1":Ljava/lang/String;
    .restart local v13    # "flr":Ljava/lang/String;
    .restart local v14    # "flr_num":I
    .restart local v15    # "forumIntent":Landroid/content/Intent;
    .restart local v18    # "id":Ljava/lang/String;
    .restart local v19    # "index":I
    .restart local v23    # "lv":Ljava/lang/String;
    .restart local v25    # "params":[Ljava/lang/String;
    .restart local v27    # "pid":Ljava/lang/String;
    .restart local v28    # "portrait":Ljava/lang/String;
    .restart local v29    # "rid":Ljava/lang/String;
    .restart local v30    # "role":Ljava/lang/String;
    .restart local v32    # "sceneid":Ljava/lang/String;
    .restart local v35    # "sharecontent":Ljava/lang/String;
    .restart local v36    # "sharethmb":Ljava/lang/String;
    .restart local v37    # "sharettl":Ljava/lang/String;
    .restart local v38    # "shareurl":Ljava/lang/String;
    .restart local v40    # "source":Ljava/lang/String;
    .restart local v41    # "templeteid":Ljava/lang/String;
    .restart local v42    # "thmb1":Ljava/lang/String;
    .restart local v44    # "ttl1":Ljava/lang/String;
    .restart local v45    # "typ":Ljava/lang/String;
    .restart local v46    # "type":Ljava/lang/String;
    .restart local v47    # "uid":Ljava/lang/String;
    .restart local v48    # "url":Ljava/lang/String;
    :catch_5
    move-exception v51

    goto/16 :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "schemeConstant"    # Ljava/lang/String;

    .prologue
    .line 749
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid scheme constants."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    const/4 v0, 0x0

    .line 755
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

    .line 762
    const-string v3, "?"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 763
    .local v2, "q_mark_index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-object v0

    .line 766
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 769
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "parameters":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 774
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

    .line 775
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    goto :goto_0

    .line 777
    :cond_2
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "all_params":[Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/logic/h/a;->av:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "schemaUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 725
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
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
    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/logic/h/a;->at:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1
    .param p0, "schemaUrl"    # Ljava/lang/String;

    .prologue
    .line 733
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const/4 v0, 0x0

    .line 736
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
    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/logic/h/a;->au:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1
    .param p0, "schemaUrl"    # Ljava/lang/String;

    .prologue
    .line 741
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    const/4 v0, 0x0

    .line 744
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
    .line 63
    sget-object v0, Lcom/jiliguala/niuwa/logic/h/a;->as:Ljava/lang/String;

    return-object v0
.end method
