.class public Lcom/nineoldandroids/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:I = 0x0

.field private static final c:[I

.field private static final d:I = 0x0

.field private static final e:[I

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3

.field private static final j:I = 0x4

.field private static final k:I = 0x5

.field private static final l:I = 0x6

.field private static final m:I = 0x7

.field private static final n:I

.field private static final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v3, [I

    const v1, 0x10102e2

    aput v1, v0, v2

    sput-object v0, Lcom/nineoldandroids/a/b;->a:[I

    .line 48
    new-array v0, v3, [I

    const v1, 0x10102e1

    aput v1, v0, v2

    sput-object v0, Lcom/nineoldandroids/a/b;->c:[I

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nineoldandroids/a/b;->e:[I

    return-void

    :array_0
    .array-data 4
        0x1010141
        0x1010198
        0x10101be
        0x10101bf
        0x10101c0
        0x10102de
        0x10102df
        0x10102e0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/nineoldandroids/a/a;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 100
    invoke-static {p0, v1}, Lcom/nineoldandroids/a/b;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/a/a;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 100
    :cond_0
    return-object v3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 104
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 112
    :cond_1
    throw v3

    .line 105
    :catch_1
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 107
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 108
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/a/a;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/a/b;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/a/d;I)Lcom/nineoldandroids/a/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/a/d;I)Lcom/nineoldandroids/a/a;
    .locals 17
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parent"    # Lcom/nineoldandroids/a/d;
    .param p4, "sequenceOrdering"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v4, 0x0

    .line 124
    .local v4, "anim":Lcom/nineoldandroids/a/a;
    const/4 v6, 0x0

    .line 128
    .local v6, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 130
    .local v7, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x3

    if-ne v13, v14, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v7, :cond_7

    :cond_1
    const/4 v14, 0x1

    if-eq v13, v14, :cond_7

    .line 132
    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 136
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 138
    .local v10, "name":Ljava/lang/String;
    const-string v14, "objectAnimator"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/nineoldandroids/a/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/a/l;

    move-result-object v4

    .line 157
    :goto_1
    if-eqz p3, :cond_0

    .line 158
    if-nez v6, :cond_2

    .line 159
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .restart local v6    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a;>;"
    :cond_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_3
    const-string v14, "animator"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 141
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14}, Lcom/nineoldandroids/a/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/a/q;)Lcom/nineoldandroids/a/q;

    move-result-object v4

    goto :goto_1

    .line 142
    :cond_4
    const-string v14, "set"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 143
    new-instance v4, Lcom/nineoldandroids/a/d;

    .end local v4    # "anim":Lcom/nineoldandroids/a/a;
    invoke-direct {v4}, Lcom/nineoldandroids/a/d;-><init>()V

    .line 144
    .restart local v4    # "anim":Lcom/nineoldandroids/a/a;
    sget-object v14, Lcom/nineoldandroids/a/b;->a:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 147
    .local v3, "a":Landroid/content/res/TypedArray;
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 148
    .local v12, "orderingValue":Landroid/util/TypedValue;
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 149
    iget v14, v12, Landroid/util/TypedValue;->type:I

    const/16 v15, 0x10

    if-ne v14, v15, :cond_5

    iget v11, v12, Landroid/util/TypedValue;->data:I

    .local v11, "ordering":I
    :goto_2
    move-object v14, v4

    .line 151
    check-cast v14, Lcom/nineoldandroids/a/d;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v14, v11}, Lcom/nineoldandroids/a/b;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/a/d;I)Lcom/nineoldandroids/a/a;

    .line 152
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 149
    .end local v11    # "ordering":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 154
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "orderingValue":Landroid/util/TypedValue;
    :cond_6
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown animator name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 164
    .end local v10    # "name":Ljava/lang/String;
    :cond_7
    if-eqz p3, :cond_9

    if-eqz v6, :cond_9

    .line 165
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v5, v14, [Lcom/nineoldandroids/a/a;

    .line 166
    .local v5, "animsArray":[Lcom/nineoldandroids/a/a;
    const/4 v8, 0x0

    .line 167
    .local v8, "index":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/a/a;

    .line 168
    .local v3, "a":Lcom/nineoldandroids/a/a;
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .local v9, "index":I
    aput-object v3, v5, v8

    move v8, v9

    .line 169
    .end local v9    # "index":I
    .restart local v8    # "index":I
    goto :goto_3

    .line 170
    .end local v3    # "a":Lcom/nineoldandroids/a/a;
    :cond_8
    if-nez p4, :cond_a

    .line 171
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/nineoldandroids/a/d;->a([Lcom/nineoldandroids/a/a;)V

    .line 177
    .end local v5    # "animsArray":[Lcom/nineoldandroids/a/a;
    .end local v8    # "index":I
    :cond_9
    :goto_4
    return-object v4

    .line 173
    .restart local v5    # "animsArray":[Lcom/nineoldandroids/a/a;
    .restart local v8    # "index":I
    :cond_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/nineoldandroids/a/d;->b([Lcom/nineoldandroids/a/a;)V

    goto :goto_4
.end method

.method private static a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/a/l;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v1, Lcom/nineoldandroids/a/l;

    invoke-direct {v1}, Lcom/nineoldandroids/a/l;-><init>()V

    .line 185
    .local v1, "anim":Lcom/nineoldandroids/a/l;
    invoke-static {p0, p1, v1}, Lcom/nineoldandroids/a/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/a/q;)Lcom/nineoldandroids/a/q;

    .line 187
    sget-object v3, Lcom/nineoldandroids/a/b;->c:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/nineoldandroids/a/l;->a(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    return-object v1
.end method

.method private static a(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/a/q;)Lcom/nineoldandroids/a/q;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Lcom/nineoldandroids/a/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 208
    sget-object v22, Lcom/nineoldandroids/a/b;->e:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 210
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v22, 0x1

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move/from16 v0, v22

    int-to-long v6, v0

    .line 212
    .local v6, "duration":J
    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move/from16 v0, v22

    int-to-long v12, v0

    .line 214
    .local v12, "startDelay":J
    const/16 v22, 0x7

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    .line 216
    .local v21, "valueType":I
    if-nez p2, :cond_0

    .line 217
    new-instance p2, Lcom/nineoldandroids/a/q;

    .end local p2    # "anim":Lcom/nineoldandroids/a/q;
    invoke-direct/range {p2 .. p2}, Lcom/nineoldandroids/a/q;-><init>()V

    .line 221
    .restart local p2    # "anim":Lcom/nineoldandroids/a/q;
    :cond_0
    const/16 v18, 0x5

    .line 222
    .local v18, "valueFromIndex":I
    const/16 v20, 0x6

    .line 224
    .local v20, "valueToIndex":I
    if-nez v21, :cond_8

    const/4 v8, 0x1

    .line 226
    .local v8, "getFloats":Z
    :goto_0
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 227
    .local v15, "tvFrom":Landroid/util/TypedValue;
    if-eqz v15, :cond_9

    const/4 v9, 0x1

    .line 228
    .local v9, "hasFrom":Z
    :goto_1
    if-eqz v9, :cond_a

    iget v5, v15, Landroid/util/TypedValue;->type:I

    .line 229
    .local v5, "fromType":I
    :goto_2
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 230
    .local v16, "tvTo":Landroid/util/TypedValue;
    if-eqz v16, :cond_b

    const/4 v10, 0x1

    .line 231
    .local v10, "hasTo":Z
    :goto_3
    if-eqz v10, :cond_c

    move-object/from16 v0, v16

    iget v14, v0, Landroid/util/TypedValue;->type:I

    .line 233
    .local v14, "toType":I
    :goto_4
    if-eqz v9, :cond_1

    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v5, v0, :cond_1

    const/16 v22, 0x1f

    move/from16 v0, v22

    if-le v5, v0, :cond_2

    :cond_1
    if-eqz v10, :cond_3

    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v14, v0, :cond_3

    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v14, v0, :cond_3

    .line 236
    :cond_2
    const/4 v8, 0x0

    .line 237
    new-instance v22, Lcom/nineoldandroids/a/e;

    invoke-direct/range {v22 .. v22}, Lcom/nineoldandroids/a/e;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a(Lcom/nineoldandroids/a/p;)V

    .line 240
    :cond_3
    if-eqz v8, :cond_12

    .line 243
    if-eqz v9, :cond_10

    .line 244
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v5, v0, :cond_d

    .line 245
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 249
    .local v17, "valueFrom":F
    :goto_5
    if-eqz v10, :cond_f

    .line 250
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_e

    .line 251
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    .line 255
    .local v19, "valueTo":F
    :goto_6
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    const/16 v23, 0x1

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a([F)V

    .line 304
    .end local v17    # "valueFrom":F
    .end local v19    # "valueTo":F
    :cond_4
    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Lcom/nineoldandroids/a/q;->d(J)Lcom/nineoldandroids/a/q;

    .line 305
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/nineoldandroids/a/q;->a(J)V

    .line 307
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 308
    const/16 v22, 0x3

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a(I)V

    .line 310
    :cond_5
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 311
    const/16 v22, 0x4

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->b(I)V

    .line 317
    :cond_6
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 318
    .local v11, "resID":I
    if-lez v11, :cond_7

    .line 319
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a(Landroid/view/animation/Interpolator;)V

    .line 321
    :cond_7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 323
    return-object p2

    .line 224
    .end local v5    # "fromType":I
    .end local v8    # "getFloats":Z
    .end local v9    # "hasFrom":Z
    .end local v10    # "hasTo":Z
    .end local v11    # "resID":I
    .end local v14    # "toType":I
    .end local v15    # "tvFrom":Landroid/util/TypedValue;
    .end local v16    # "tvTo":Landroid/util/TypedValue;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 227
    .restart local v8    # "getFloats":Z
    .restart local v15    # "tvFrom":Landroid/util/TypedValue;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 228
    .restart local v9    # "hasFrom":Z
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 230
    .restart local v5    # "fromType":I
    .restart local v16    # "tvTo":Landroid/util/TypedValue;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 231
    .restart local v10    # "hasTo":Z
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 247
    .restart local v14    # "toType":I
    :cond_d
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueFrom":F
    goto/16 :goto_5

    .line 253
    :cond_e
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    .restart local v19    # "valueTo":F
    goto/16 :goto_6

    .line 257
    .end local v19    # "valueTo":F
    :cond_f
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a([F)V

    goto/16 :goto_7

    .line 260
    .end local v17    # "valueFrom":F
    :cond_10
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_11

    .line 261
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    .line 265
    .restart local v19    # "valueTo":F
    :goto_8
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a([F)V

    goto/16 :goto_7

    .line 263
    .end local v19    # "valueTo":F
    :cond_11
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v19

    .restart local v19    # "valueTo":F
    goto :goto_8

    .line 270
    .end local v19    # "valueTo":F
    :cond_12
    if-eqz v9, :cond_18

    .line 271
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v5, v0, :cond_13

    .line 272
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    .line 278
    .local v17, "valueFrom":I
    :goto_9
    if-eqz v10, :cond_17

    .line 279
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_15

    .line 280
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 286
    .local v19, "valueTo":I
    :goto_a
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    const/16 v23, 0x1

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a([I)V

    goto/16 :goto_7

    .line 273
    .end local v17    # "valueFrom":I
    .end local v19    # "valueTo":I
    :cond_13
    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v5, v0, :cond_14

    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v5, v0, :cond_14

    .line 274
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueFrom":I
    goto :goto_9

    .line 276
    .end local v17    # "valueFrom":I
    :cond_14
    const/16 v22, 0x0

    move/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueFrom":I
    goto :goto_9

    .line 281
    :cond_15
    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v14, v0, :cond_16

    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v14, v0, :cond_16

    .line 282
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_a

    .line 284
    .end local v19    # "valueTo":I
    :cond_16
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_a

    .line 288
    .end local v19    # "valueTo":I
    :cond_17
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v17, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a([I)V

    goto/16 :goto_7

    .line 291
    .end local v17    # "valueFrom":I
    :cond_18
    if-eqz v10, :cond_4

    .line 292
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v14, v0, :cond_19

    .line 293
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 299
    .restart local v19    # "valueTo":I
    :goto_b
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v19, v22, v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/a/q;->a([I)V

    goto/16 :goto_7

    .line 294
    .end local v19    # "valueTo":I
    :cond_19
    const/16 v22, 0x1c

    move/from16 v0, v22

    if-lt v14, v0, :cond_1a

    const/16 v22, 0x1f

    move/from16 v0, v22

    if-gt v14, v0, :cond_1a

    .line 295
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_b

    .line 297
    .end local v19    # "valueTo":I
    :cond_1a
    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .restart local v19    # "valueTo":I
    goto :goto_b
.end method
