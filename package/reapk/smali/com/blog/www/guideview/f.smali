.class public Lcom/blog/www/guideview/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/blog/www/guideview/MaskView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blog/www/guideview/f$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Z

.field private c:Lcom/blog/www/guideview/e;

.field private d:Lcom/blog/www/guideview/MaskView;

.field private e:[Lcom/blog/www/guideview/d;

.field private f:Z

.field private g:Lcom/blog/www/guideview/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/blog/www/guideview/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/blog/www/guideview/f;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blog/www/guideview/f;->f:Z

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/blog/www/guideview/f;)Lcom/blog/www/guideview/g$a;
    .locals 1
    .param p0, "x0"    # Lcom/blog/www/guideview/f;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/blog/www/guideview/f;->g:Lcom/blog/www/guideview/g$a;

    return-object v0
.end method

.method private b(Landroid/app/Activity;)Lcom/blog/www/guideview/MaskView;
    .locals 20
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 153
    const v16, 0x1020002

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 155
    .local v4, "content":Landroid/view/ViewGroup;
    new-instance v11, Lcom/blog/www/guideview/MaskView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/blog/www/guideview/MaskView;-><init>(Landroid/app/Activity;)V

    .line 156
    .local v11, "maskView":Lcom/blog/www/guideview/MaskView;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->a(Lcom/blog/www/guideview/MaskView$a;)V

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/blog/www/guideview/e;->m:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->b(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->h:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->a(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->k:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->c(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->b:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->e(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->c:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->f(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->d:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->g(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->e:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->h(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->f:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->i(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->l:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->d(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/blog/www/guideview/e;->o:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->a(Z)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->r:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->j(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->s:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->k(I)V

    .line 169
    invoke-virtual {v11}, Lcom/blog/www/guideview/MaskView;->a()V

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 174
    const/4 v13, 0x0

    .line 175
    .local v13, "parentX":I
    const/4 v14, 0x0

    .line 176
    .local v14, "parentY":I
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v8, v0, [I

    .line 177
    .local v8, "loc":[I
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 178
    const/16 v16, 0x1

    aget v14, v8, v16

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/blog/www/guideview/e;->q:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/blog/www/guideview/f;->f:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    if-nez v14, :cond_0

    .line 182
    :try_start_0
    const-string v16, "com.android.internal.R$dimen"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 183
    .local v9, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    .line 184
    .local v10, "localObject":Ljava/lang/Object;
    const-string v16, "status_bar_height"

    .line 185
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 186
    .local v7, "i5":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v14

    .line 210
    .end local v7    # "i5":I
    .end local v9    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "localObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v13, v14}, Lcom/blog/www/guideview/c;->a(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->a(Landroid/graphics/Rect;)V

    .line 221
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->i:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 222
    .local v6, "fulling":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 223
    invoke-static {v6, v13, v14}, Lcom/blog/www/guideview/c;->a(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->b(Landroid/graphics/Rect;)V

    .line 226
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/blog/www/guideview/e;->g:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 227
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->setClickable(Z)V

    .line 233
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->e:[Lcom/blog/www/guideview/d;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    aget-object v2, v17, v16

    .line 234
    .local v2, "c":Lcom/blog/www/guideview/d;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/blog/www/guideview/c;->a(Landroid/view/LayoutInflater;Lcom/blog/www/guideview/d;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->addView(Landroid/view/View;)V

    .line 233
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 187
    .end local v2    # "c":Lcom/blog/www/guideview/d;
    .end local v6    # "fulling":Landroid/view/View;
    :catch_0
    move-exception v5

    .line 188
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 189
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 190
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 191
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v5

    .line 192
    .local v5, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v5}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto/16 :goto_0

    .line 193
    .end local v5    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v5

    .line 194
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 195
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v5

    .line 196
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 197
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v5

    .line 198
    .local v5, "e":Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_0

    .line 199
    .end local v5    # "e":Ljava/lang/SecurityException;
    :catch_6
    move-exception v5

    .line 200
    .local v5, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v5}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_0

    .line 214
    .end local v5    # "e":Ljava/lang/NoSuchFieldException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 215
    .local v15, "target":Landroid/view/View;
    if-eqz v15, :cond_1

    .line 216
    invoke-static {v15, v13, v14}, Lcom/blog/www/guideview/c;->a(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->a(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 229
    .end local v15    # "target":Landroid/view/View;
    .restart local v6    # "fulling":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/blog/www/guideview/MaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 237
    :cond_5
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 239
    .local v3, "closeBtn":Landroid/widget/ImageView;
    sget v16, Lcom/blog/www/guideview/h$b;->close_btn:I

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 240
    sget v16, Lcom/blog/www/guideview/h$c;->icon_close_white:I

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    new-instance v16, Lcom/blog/www/guideview/f$a;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/blog/www/guideview/f$a;-><init>(Lcom/blog/www/guideview/f;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    new-instance v12, Lcom/blog/www/guideview/MaskView$b;

    const/16 v16, -0x1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v0, v1}, Lcom/blog/www/guideview/MaskView$b;-><init>(II)V

    .line 244
    .local v12, "params":Lcom/blog/www/guideview/MaskView$b;
    const/16 v16, 0x31

    move/from16 v0, v16

    iput v0, v12, Lcom/blog/www/guideview/MaskView$b;->j:I

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->v:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/blog/www/guideview/a/c;->a(Landroid/content/Context;F)I

    move-result v16

    move/from16 v0, v16

    iput v0, v12, Lcom/blog/www/guideview/MaskView$b;->width:I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->w:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/blog/www/guideview/a/c;->a(Landroid/content/Context;F)I

    move-result v16

    move/from16 v0, v16

    iput v0, v12, Lcom/blog/www/guideview/MaskView$b;->height:I

    .line 248
    invoke-static/range {p1 .. p1}, Lcom/blog/www/guideview/a/a;->d(Landroid/content/Context;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/blog/www/guideview/e;->v:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/blog/www/guideview/a/c;->a(Landroid/content/Context;F)I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/blog/www/guideview/e;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/blog/www/guideview/a/c;->a(Landroid/content/Context;F)I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLeft(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/blog/www/guideview/e;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/blog/www/guideview/a/c;->a(Landroid/content/Context;F)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTop(I)V

    .line 250
    invoke-virtual {v11, v3, v12}, Lcom/blog/www/guideview/MaskView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    return-object v11
.end method

.method static synthetic b(Lcom/blog/www/guideview/f;)Lcom/blog/www/guideview/MaskView;
    .locals 1
    .param p0, "x0"    # Lcom/blog/www/guideview/f;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    return-object v0
.end method

.method static synthetic c(Lcom/blog/www/guideview/f;)V
    .locals 0
    .param p0, "x0"    # Lcom/blog/www/guideview/f;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/blog/www/guideview/f;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iput-object v1, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    .line 256
    iput-object v1, p0, Lcom/blog/www/guideview/f;->e:[Lcom/blog/www/guideview/d;

    .line 257
    iput-object v1, p0, Lcom/blog/www/guideview/f;->g:Lcom/blog/www/guideview/g$a;

    .line 258
    iget-object v0, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v0}, Lcom/blog/www/guideview/MaskView;->removeAllViews()V

    .line 259
    iget-object v0, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v0}, Lcom/blog/www/guideview/MaskView;->c()V

    .line 260
    iput-object v1, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    .line 261
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 103
    iget-object v3, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    if-nez v3, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/blog/www/guideview/f;->b:Z

    .line 107
    iget-object v3, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v3}, Lcom/blog/www/guideview/MaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 108
    .local v2, "vp":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 111
    iget-object v3, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    iget v3, v3, Lcom/blog/www/guideview/e;->u:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 113
    iget-object v3, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v3}, Lcom/blog/www/guideview/MaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 114
    .local v1, "context":Landroid/content/Context;
    sget-boolean v3, Lcom/blog/www/guideview/f;->a:Z

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    iget v3, v3, Lcom/blog/www/guideview/e;->u:I

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 117
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-boolean v3, Lcom/blog/www/guideview/f;->a:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 118
    :cond_3
    new-instance v3, Lcom/blog/www/guideview/f$2;

    invoke-direct {v3, p0, v2}, Lcom/blog/www/guideview/f$2;-><init>(Lcom/blog/www/guideview/f;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 135
    iget-object v3, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v3, v0}, Lcom/blog/www/guideview/MaskView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 137
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v1    # "context":Landroid/content/Context;
    :cond_4
    iget-object v3, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    iget-object v3, p0, Lcom/blog/www/guideview/f;->g:Lcom/blog/www/guideview/g$a;

    if-eqz v3, :cond_5

    .line 139
    iget-object v3, p0, Lcom/blog/www/guideview/f;->g:Lcom/blog/www/guideview/g$a;

    invoke-interface {v3}, Lcom/blog/www/guideview/g$a;->b()V

    .line 141
    :cond_5
    invoke-direct {p0}, Lcom/blog/www/guideview/f;->d()V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/blog/www/guideview/f;->b:Z

    .line 66
    iget-object v2, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    if-nez v2, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/blog/www/guideview/f;->b(Landroid/app/Activity;)Lcom/blog/www/guideview/MaskView;

    move-result-object v2

    iput-object v2, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    .line 69
    :cond_0
    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 70
    .local v1, "content":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v2}, Lcom/blog/www/guideview/MaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    iget-object v2, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    iget v2, v2, Lcom/blog/www/guideview/e;->t:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 73
    iget-object v2, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    iget v2, v2, Lcom/blog/www/guideview/e;->t:I

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 74
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-boolean v2, Lcom/blog/www/guideview/f;->a:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 75
    :cond_1
    new-instance v2, Lcom/blog/www/guideview/f$1;

    invoke-direct {v2, p0}, Lcom/blog/www/guideview/f$1;-><init>(Lcom/blog/www/guideview/f;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 90
    iget-object v2, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v2, v0}, Lcom/blog/www/guideview/MaskView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    :goto_0
    return-void

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/blog/www/guideview/f;->g:Lcom/blog/www/guideview/g$a;

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/blog/www/guideview/f;->g:Lcom/blog/www/guideview/g$a;

    invoke-interface {v2}, Lcom/blog/www/guideview/g$a;->a()V

    goto :goto_0
.end method

.method a(Lcom/blog/www/guideview/e;)V
    .locals 0
    .param p1, "configuration"    # Lcom/blog/www/guideview/e;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    .line 47
    return-void
.end method

.method a(Lcom/blog/www/guideview/g$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/blog/www/guideview/g$a;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/blog/www/guideview/f;->g:Lcom/blog/www/guideview/g$a;

    .line 55
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/blog/www/guideview/f;->f:Z

    .line 150
    return-void
.end method

.method a([Lcom/blog/www/guideview/d;)V
    .locals 0
    .param p1, "components"    # [Lcom/blog/www/guideview/d;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/blog/www/guideview/f;->e:[Lcom/blog/www/guideview/d;

    .line 51
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    iget-object v0, v0, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    iget-boolean v0, v0, Lcom/blog/www/guideview/e;->z:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    iget-object v0, v0, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 286
    iget-object v0, p0, Lcom/blog/www/guideview/f;->g:Lcom/blog/www/guideview/g$a;

    invoke-interface {v0}, Lcom/blog/www/guideview/g$a;->d()V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/blog/www/guideview/f;->a()V

    .line 289
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/blog/www/guideview/f;->b:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    iget-boolean v0, v0, Lcom/blog/www/guideview/e;->n:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/blog/www/guideview/f;->a()V

    .line 280
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 265
    iget-object v2, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/blog/www/guideview/f;->c:Lcom/blog/www/guideview/e;

    iget-boolean v2, v2, Lcom/blog/www/guideview/e;->n:Z

    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/blog/www/guideview/f;->a()V

    .line 272
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 269
    goto :goto_0

    :cond_1
    move v0, v1

    .line 272
    goto :goto_0
.end method
