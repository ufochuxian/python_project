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

.field private c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private d:Lcom/blog/www/guideview/e;

.field private e:Lcom/blog/www/guideview/MaskView;

.field private f:[Lcom/blog/www/guideview/d;

.field private g:Z

.field private h:Lcom/blog/www/guideview/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
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

    iput-boolean v0, p0, Lcom/blog/www/guideview/f;->g:Z

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/blog/www/guideview/f;)Lcom/blog/www/guideview/g$a;
    .locals 1
    .param p0, "x0"    # Lcom/blog/www/guideview/f;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/blog/www/guideview/f;->h:Lcom/blog/www/guideview/g$a;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/blog/www/guideview/MaskView;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "content"    # Landroid/view/ViewGroup;
    .param p3, "maskView"    # Lcom/blog/www/guideview/MaskView;

    .prologue
    .line 224
    const/4 v6, 0x0

    .line 225
    .local v6, "parentX":I
    const/4 v7, 0x0

    .line 226
    .local v7, "parentY":I
    const/4 v9, 0x2

    new-array v3, v9, [I

    .line 227
    .local v3, "loc":[I
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 228
    const/4 v9, 0x1

    aget v7, v3, v9

    .line 229
    iget-object v9, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-boolean v9, v9, Lcom/blog/www/guideview/e;->q:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/blog/www/guideview/f;->g:Z

    if-eqz v9, :cond_0

    if-nez v7, :cond_0

    .line 232
    :try_start_0
    const-string v9, "com.android.internal.R$dimen"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 233
    .local v4, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 234
    .local v5, "localObject":Ljava/lang/Object;
    const-string v9, "status_bar_height"

    .line 235
    invoke-virtual {v4, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, "i5":I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v7

    .line 260
    .end local v2    # "i5":I
    .end local v4    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "localObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {p3, v7}, Lcom/blog/www/guideview/MaskView;->l(I)V

    .line 262
    iget-object v9, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-object v9, v9, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    if-eqz v9, :cond_3

    .line 263
    iget-object v9, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-object v9, v9, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    invoke-static {v9, v6, v7}, Lcom/blog/www/guideview/c;->a(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/blog/www/guideview/MaskView;->a(Landroid/graphics/Rect;)V

    .line 273
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v9, v9, Lcom/blog/www/guideview/e;->i:I

    invoke-virtual {p1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, "fulling":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 275
    invoke-static {v1, v6, v7}, Lcom/blog/www/guideview/c;->a(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/blog/www/guideview/MaskView;->b(Landroid/graphics/Rect;)V

    .line 277
    :cond_2
    return-void

    .line 237
    .end local v1    # "fulling":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 243
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_6
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_3
    iget-object v9, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v9, v9, Lcom/blog/www/guideview/e;->j:I

    invoke-virtual {p1, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 267
    .local v8, "target":Landroid/view/View;
    if-eqz v8, :cond_1

    .line 268
    invoke-static {v8, v6, v7}, Lcom/blog/www/guideview/c;->a(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/blog/www/guideview/MaskView;->a(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/blog/www/guideview/f;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/blog/www/guideview/MaskView;)V
    .locals 0
    .param p0, "x0"    # Lcom/blog/www/guideview/f;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/view/ViewGroup;
    .param p3, "x3"    # Lcom/blog/www/guideview/MaskView;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/blog/www/guideview/f;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/blog/www/guideview/MaskView;)V

    return-void
.end method

.method static synthetic b(Lcom/blog/www/guideview/f;)Lcom/blog/www/guideview/MaskView;
    .locals 1
    .param p0, "x0"    # Lcom/blog/www/guideview/f;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    return-object v0
.end method

.method private c(Landroid/app/Activity;)Lcom/blog/www/guideview/MaskView;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 153
    const v6, 0x1020002

    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 155
    .local v2, "content":Landroid/view/ViewGroup;
    new-instance v3, Lcom/blog/www/guideview/MaskView;

    invoke-direct {v3, p1}, Lcom/blog/www/guideview/MaskView;-><init>(Landroid/app/Activity;)V

    .line 156
    .local v3, "maskView":Lcom/blog/www/guideview/MaskView;
    invoke-virtual {v3, p0}, Lcom/blog/www/guideview/MaskView;->a(Lcom/blog/www/guideview/MaskView$a;)V

    .line 157
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v7, v7, Lcom/blog/www/guideview/e;->m:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->b(I)V

    .line 158
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->h:I

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->a(I)V

    .line 159
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->k:I

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->c(I)V

    .line 160
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->b:I

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->e(I)V

    .line 161
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->c:I

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->f(I)V

    .line 162
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->d:I

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->g(I)V

    .line 163
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->e:I

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->h(I)V

    .line 164
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->f:I

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->i(I)V

    .line 165
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->l:I

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->d(I)V

    .line 166
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-boolean v6, v6, Lcom/blog/www/guideview/e;->o:Z

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->a(Z)V

    .line 167
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->r:I

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->j(I)V

    .line 168
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->s:I

    invoke-virtual {v3, v6}, Lcom/blog/www/guideview/MaskView;->k(I)V

    .line 169
    invoke-virtual {v3}, Lcom/blog/www/guideview/MaskView;->a()V

    .line 170
    invoke-virtual {v3, p0}, Lcom/blog/www/guideview/MaskView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 173
    invoke-direct {p0, p1, v2, v3}, Lcom/blog/www/guideview/f;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/blog/www/guideview/MaskView;)V

    .line 175
    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-boolean v6, v6, Lcom/blog/www/guideview/e;->g:Z

    if-eqz v6, :cond_0

    .line 176
    invoke-virtual {v3, v5}, Lcom/blog/www/guideview/MaskView;->setClickable(Z)V

    .line 182
    :goto_0
    iget-object v6, p0, Lcom/blog/www/guideview/f;->f:[Lcom/blog/www/guideview/d;

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v0, v6, v5

    .line 183
    .local v0, "c":Lcom/blog/www/guideview/d;
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/blog/www/guideview/c;->a(Landroid/view/LayoutInflater;Lcom/blog/www/guideview/d;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/blog/www/guideview/MaskView;->addView(Landroid/view/View;)V

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 178
    .end local v0    # "c":Lcom/blog/www/guideview/d;
    :cond_0
    invoke-virtual {v3, p0}, Lcom/blog/www/guideview/MaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 186
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 188
    .local v1, "closeBtn":Landroid/widget/ImageView;
    sget v5, Lcom/blog/www/guideview/h$b;->close_btn:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 189
    sget v5, Lcom/blog/www/guideview/h$c;->icon_close_white:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    new-instance v5, Lcom/blog/www/guideview/f$a;

    invoke-direct {v5, p0}, Lcom/blog/www/guideview/f$a;-><init>(Lcom/blog/www/guideview/f;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v4, Lcom/blog/www/guideview/MaskView$b;

    invoke-direct {v4, v9, v9}, Lcom/blog/www/guideview/MaskView$b;-><init>(II)V

    .line 193
    .local v4, "params":Lcom/blog/www/guideview/MaskView$b;
    const/16 v5, 0x31

    iput v5, v4, Lcom/blog/www/guideview/MaskView$b;->k:I

    .line 194
    iget-object v5, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v5, v5, Lcom/blog/www/guideview/e;->v:I

    int-to-float v5, v5

    invoke-static {p1, v5}, Lcom/blog/www/guideview/a/c;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Lcom/blog/www/guideview/MaskView$b;->width:I

    .line 195
    iget-object v5, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v5, v5, Lcom/blog/www/guideview/e;->w:I

    int-to-float v5, v5

    invoke-static {p1, v5}, Lcom/blog/www/guideview/a/c;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Lcom/blog/www/guideview/MaskView$b;->height:I

    .line 197
    invoke-static {p1}, Lcom/blog/www/guideview/a/a;->d(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->v:I

    int-to-float v6, v6

    invoke-static {p1, v6}, Lcom/blog/www/guideview/a/c;->a(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v6, v6, Lcom/blog/www/guideview/e;->x:I

    int-to-float v6, v6

    invoke-static {p1, v6}, Lcom/blog/www/guideview/a/c;->a(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLeft(I)V

    .line 198
    iget-object v5, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v5, v5, Lcom/blog/www/guideview/e;->y:I

    int-to-float v5, v5

    invoke-static {p1, v5}, Lcom/blog/www/guideview/a/c;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTop(I)V

    .line 199
    invoke-virtual {v3, v1, v4}, Lcom/blog/www/guideview/MaskView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v5, Lcom/blog/www/guideview/f$3;

    invoke-direct {v5, p0, p1, v2, v3}, Lcom/blog/www/guideview/f$3;-><init>(Lcom/blog/www/guideview/f;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/blog/www/guideview/MaskView;)V

    iput-object v5, p0, Lcom/blog/www/guideview/f;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 209
    iget-object v5, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-object v5, v5, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v6, p0, Lcom/blog/www/guideview/f;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 211
    return-object v3
.end method

.method static synthetic c(Lcom/blog/www/guideview/f;)V
    .locals 0
    .param p0, "x0"    # Lcom/blog/www/guideview/f;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/blog/www/guideview/f;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/blog/www/guideview/f;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-object v0, v0, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/blog/www/guideview/f;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 284
    :cond_0
    iput-object v2, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    .line 285
    iput-object v2, p0, Lcom/blog/www/guideview/f;->f:[Lcom/blog/www/guideview/d;

    .line 286
    iput-object v2, p0, Lcom/blog/www/guideview/f;->h:Lcom/blog/www/guideview/g$a;

    .line 287
    iget-object v0, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v0}, Lcom/blog/www/guideview/MaskView;->removeAllViews()V

    .line 288
    iget-object v0, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v0}, Lcom/blog/www/guideview/MaskView;->c()V

    .line 289
    iput-object v2, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    .line 290
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 103
    iget-object v3, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

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
    iget-object v3, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v3}, Lcom/blog/www/guideview/MaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 108
    .local v2, "vp":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 111
    iget-object v3, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v3, v3, Lcom/blog/www/guideview/e;->u:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 113
    iget-object v3, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

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
    iget-object v3, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

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
    iget-object v3, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v3, v0}, Lcom/blog/www/guideview/MaskView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 137
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v1    # "context":Landroid/content/Context;
    :cond_4
    iget-object v3, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    iget-object v3, p0, Lcom/blog/www/guideview/f;->h:Lcom/blog/www/guideview/g$a;

    if-eqz v3, :cond_5

    .line 139
    iget-object v3, p0, Lcom/blog/www/guideview/f;->h:Lcom/blog/www/guideview/g$a;

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
    iget-object v2, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    if-nez v2, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/blog/www/guideview/f;->c(Landroid/app/Activity;)Lcom/blog/www/guideview/MaskView;

    move-result-object v2

    iput-object v2, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    .line 69
    :cond_0
    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 70
    .local v1, "content":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v2}, Lcom/blog/www/guideview/MaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    iget-object v2, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget v2, v2, Lcom/blog/www/guideview/e;->t:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 73
    iget-object v2, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

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
    iget-object v2, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    invoke-virtual {v2, v0}, Lcom/blog/www/guideview/MaskView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_2
    :goto_0
    return-void

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/blog/www/guideview/f;->h:Lcom/blog/www/guideview/g$a;

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/blog/www/guideview/f;->h:Lcom/blog/www/guideview/g$a;

    invoke-interface {v2}, Lcom/blog/www/guideview/g$a;->a()V

    goto :goto_0
.end method

.method a(Lcom/blog/www/guideview/e;)V
    .locals 0
    .param p1, "configuration"    # Lcom/blog/www/guideview/e;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    .line 47
    return-void
.end method

.method a(Lcom/blog/www/guideview/g$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/blog/www/guideview/g$a;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/blog/www/guideview/f;->h:Lcom/blog/www/guideview/g$a;

    .line 55
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/blog/www/guideview/f;->g:Z

    .line 150
    return-void
.end method

.method a([Lcom/blog/www/guideview/d;)V
    .locals 0
    .param p1, "components"    # [Lcom/blog/www/guideview/d;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/blog/www/guideview/f;->f:[Lcom/blog/www/guideview/d;

    .line 51
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-object v0, v0, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-boolean v0, v0, Lcom/blog/www/guideview/e;->z:Z

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-object v0, v0, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 315
    iget-object v0, p0, Lcom/blog/www/guideview/f;->h:Lcom/blog/www/guideview/g$a;

    invoke-interface {v0}, Lcom/blog/www/guideview/g$a;->d()V

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/blog/www/guideview/f;->a()V

    .line 318
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    if-eqz v1, :cond_0

    .line 216
    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 217
    .local v0, "content":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/blog/www/guideview/f;->e:Lcom/blog/www/guideview/MaskView;

    invoke-direct {p0, p1, v0, v1}, Lcom/blog/www/guideview/f;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/blog/www/guideview/MaskView;)V

    .line 219
    .end local v0    # "content":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/blog/www/guideview/f;->b:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-boolean v0, v0, Lcom/blog/www/guideview/e;->n:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/blog/www/guideview/f;->a()V

    .line 309
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

    .line 293
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 294
    iget-object v2, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/blog/www/guideview/f;->d:Lcom/blog/www/guideview/e;

    iget-boolean v2, v2, Lcom/blog/www/guideview/e;->n:Z

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/blog/www/guideview/f;->a()V

    .line 301
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 298
    goto :goto_0

    :cond_1
    move v0, v1

    .line 301
    goto :goto_0
.end method
