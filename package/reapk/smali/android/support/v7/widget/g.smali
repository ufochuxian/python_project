.class public final Landroid/support/v7/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/g$a;,
        Landroid/support/v7/widget/g$d;,
        Landroid/support/v7/widget/g$b;,
        Landroid/support/v7/widget/g$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AppCompatDrawableManager"

.field private static final b:Z = false

.field private static final c:Landroid/graphics/PorterDuff$Mode;

.field private static final d:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final e:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static f:Landroid/support/v7/widget/g;

.field private static final g:Landroid/support/v7/widget/g$b;

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[I


# instance fields
.field private n:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/k/p",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Landroid/support/v4/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/g$c;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/support/v4/k/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/p",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/lang/Object;

.field private final r:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/k/i",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private s:Landroid/util/TypedValue;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/g;->c:Landroid/graphics/PorterDuff$Mode;

    .line 105
    new-instance v0, Landroid/support/v7/widget/g$b;

    invoke-direct {v0, v7}, Landroid/support/v7/widget/g$b;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/g;->g:Landroid/support/v7/widget/g$b;

    .line 111
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/a/b$f;->abc_textfield_search_default_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/b$f;->abc_textfield_default_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/a/b$f;->abc_ab_share_pack_mtrl_alpha:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/g;->h:[I

    .line 121
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/a/b$f;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/b$f;->abc_seekbar_tick_mark_material:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/a/b$f;->abc_ic_menu_share_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/a/b$f;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Landroid/support/v7/a/b$f;->abc_ic_menu_cut_mtrl_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Landroid/support/v7/a/b$f;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v2, v0, v1

    sget v1, Landroid/support/v7/a/b$f;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v1, v0, v7

    sput-object v0, Landroid/support/v7/widget/g;->i:[I

    .line 135
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/a/b$f;->abc_textfield_activated_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/b$f;->abc_textfield_search_activated_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/a/b$f;->abc_cab_background_top_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/a/b$f;->abc_text_cursor_material:I

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Landroid/support/v7/a/b$f;->abc_text_select_handle_left_mtrl_dark:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Landroid/support/v7/a/b$f;->abc_text_select_handle_middle_mtrl_dark:I

    aput v2, v0, v1

    sget v1, Landroid/support/v7/a/b$f;->abc_text_select_handle_right_mtrl_dark:I

    aput v1, v0, v7

    const/4 v1, 0x7

    sget v2, Landroid/support/v7/a/b$f;->abc_text_select_handle_left_mtrl_light:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Landroid/support/v7/a/b$f;->abc_text_select_handle_middle_mtrl_light:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Landroid/support/v7/a/b$f;->abc_text_select_handle_right_mtrl_light:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/g;->j:[I

    .line 152
    new-array v0, v6, [I

    sget v1, Landroid/support/v7/a/b$f;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/b$f;->abc_cab_background_internal_bg:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/a/b$f;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/g;->k:[I

    .line 162
    new-array v0, v5, [I

    sget v1, Landroid/support/v7/a/b$f;->abc_tab_indicator_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/b$f;->abc_textfield_search_material:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/g;->l:[I

    .line 172
    new-array v0, v5, [I

    sget v1, Landroid/support/v7/a/b$f;->abc_btn_check_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/b$f;->abc_btn_radio_material:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/g;->m:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/g;->q:Ljava/lang/Object;

    .line 182
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/g;->r:Ljava/util/WeakHashMap;

    .line 742
    return-void
.end method

.method private static a(Landroid/util/TypedValue;)J
    .locals 4
    .param p0, "tv"    # Landroid/util/TypedValue;

    .prologue
    .line 227
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static a(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "resId"    # I

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 518
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    sget v1, Landroid/support/v7/a/b$f;->abc_switch_thumb_material:I

    if-ne p0, v1, :cond_0

    .line 519
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 522
    :cond_0
    return-object v0
.end method

.method public static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 685
    sget-object v1, Landroid/support/v7/widget/g;->g:Landroid/support/v7/widget/g$b;

    invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/g$b;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 687
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v0, :cond_0

    .line 689
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 690
    .restart local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    sget-object v1, Landroid/support/v7/widget/g;->g:Landroid/support/v7/widget/g$b;

    invoke-virtual {v1, p0, p1, v0}, Landroid/support/v7/widget/g$b;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 693
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "tint"    # Landroid/content/res/ColorStateList;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p2, "state"    # [I

    .prologue
    .line 676
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 677
    :cond_0
    const/4 v1, 0x0

    .line 680
    :goto_0
    return-object v1

    .line 679
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 680
    .local v0, "color":I
    invoke-static {v0, p1}, Landroid/support/v7/widget/g;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param
    .param p3, "failIfNotKnown"    # Z
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    const v8, 0x102000f

    const v7, 0x102000d

    const/high16 v5, 0x1020000

    .line 264
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/g;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 265
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_2

    .line 267
    invoke-static {p4}, Landroid/support/v7/widget/s;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 270
    :cond_0
    invoke-static {p4}, Landroid/support/v4/d/a/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 271
    invoke-static {p4, v1}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 274
    invoke-static {p2}, Landroid/support/v7/widget/g;->a(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 275
    .local v2, "tintMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v2, :cond_1

    .line 276
    invoke-static {p4, v2}, Landroid/support/v4/d/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 305
    .end local v2    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    :goto_0
    return-object p4

    .line 278
    :cond_2
    sget v4, Landroid/support/v7/a/b$f;->abc_seekbar_track_material:I

    if-ne p2, v4, :cond_3

    move-object v0, p4

    .line 279
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 280
    .local v0, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroid/support/v7/a/b$b;->colorControlNormal:I

    .line 281
    invoke-static {p1, v5}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/support/v7/widget/g;->c:Landroid/graphics/PorterDuff$Mode;

    .line 280
    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/g;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroid/support/v7/a/b$b;->colorControlNormal:I

    .line 283
    invoke-static {p1, v5}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/support/v7/widget/g;->c:Landroid/graphics/PorterDuff$Mode;

    .line 282
    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/g;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 284
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroid/support/v7/a/b$b;->colorControlActivated:I

    .line 285
    invoke-static {p1, v5}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/support/v7/widget/g;->c:Landroid/graphics/PorterDuff$Mode;

    .line 284
    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/g;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 286
    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_3
    sget v4, Landroid/support/v7/a/b$f;->abc_ratingbar_material:I

    if-eq p2, v4, :cond_4

    sget v4, Landroid/support/v7/a/b$f;->abc_ratingbar_indicator_material:I

    if-eq p2, v4, :cond_4

    sget v4, Landroid/support/v7/a/b$f;->abc_ratingbar_small_material:I

    if-ne p2, v4, :cond_5

    :cond_4
    move-object v0, p4

    .line 289
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 290
    .restart local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroid/support/v7/a/b$b;->colorControlNormal:I

    .line 291
    invoke-static {p1, v5}, Landroid/support/v7/widget/ao;->c(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/support/v7/widget/g;->c:Landroid/graphics/PorterDuff$Mode;

    .line 290
    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/g;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 293
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroid/support/v7/a/b$b;->colorControlActivated:I

    .line 294
    invoke-static {p1, v5}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/support/v7/widget/g;->c:Landroid/graphics/PorterDuff$Mode;

    .line 293
    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/g;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 295
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Landroid/support/v7/a/b$b;->colorControlActivated:I

    .line 296
    invoke-static {p1, v5}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/support/v7/widget/g;->c:Landroid/graphics/PorterDuff$Mode;

    .line 295
    invoke-static {v4, v5, v6}, Landroid/support/v7/widget/g;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 298
    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    invoke-static {p1, p2, p4}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v3

    .line 299
    .local v3, "tinted":Z
    if-nez v3, :cond_1

    if-eqz p3, :cond_1

    .line 302
    const/4 p4, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "key"    # J

    .prologue
    const/4 v3, 0x0

    .line 394
    iget-object v4, p0, Landroid/support/v7/widget/g;->q:Ljava/lang/Object;

    monitor-enter v4

    .line 395
    :try_start_0
    iget-object v5, p0, Landroid/support/v7/widget/g;->r:Ljava/util/WeakHashMap;

    .line 396
    invoke-virtual {v5, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/k/i;

    .line 397
    .local v0, "cache":Landroid/support/v4/k/i;, "Landroid/support/v4/k/i<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v0, :cond_0

    .line 398
    monitor-exit v4

    .line 413
    :goto_0
    return-object v3

    .line 401
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/k/i;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 402
    .local v2, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v2, :cond_2

    .line 404
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 405
    .local v1, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 412
    .end local v0    # "cache":Landroid/support/v4/k/i;, "Landroid/support/v4/k/i<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local v1    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v2    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 409
    .restart local v0    # "cache":Landroid/support/v4/k/i;, "Landroid/support/v4/k/i<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v1    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v2    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/k/i;->b(J)V

    .line 412
    .end local v1    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a()Landroid/support/v7/widget/g;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Landroid/support/v7/widget/g;->f:Landroid/support/v7/widget/g;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/support/v7/widget/g;

    invoke-direct {v0}, Landroid/support/v7/widget/g;-><init>()V

    sput-object v0, Landroid/support/v7/widget/g;->f:Landroid/support/v7/widget/g;

    .line 87
    sget-object v0, Landroid/support/v7/widget/g;->f:Landroid/support/v7/widget/g;

    invoke-static {v0}, Landroid/support/v7/widget/g;->a(Landroid/support/v7/widget/g;)V

    .line 89
    :cond_0
    sget-object v0, Landroid/support/v7/widget/g;->f:Landroid/support/v7/widget/g;

    return-object v0
.end method

.method private a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param
    .param p3, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 573
    iget-object v1, p0, Landroid/support/v7/widget/g;->n:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 574
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/g;->n:Ljava/util/WeakHashMap;

    .line 576
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/g;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/k/p;

    .line 577
    .local v0, "themeTints":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<Landroid/content/res/ColorStateList;>;"
    if-nez v0, :cond_1

    .line 578
    new-instance v0, Landroid/support/v4/k/p;

    .end local v0    # "themeTints":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<Landroid/content/res/ColorStateList;>;"
    invoke-direct {v0}, Landroid/support/v4/k/p;-><init>()V

    .line 579
    .restart local v0    # "themeTints":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<Landroid/content/res/ColorStateList;>;"
    iget-object v1, p0, Landroid/support/v7/widget/g;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/k/p;->d(ILjava/lang/Object;)V

    .line 582
    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 697
    invoke-static {p0}, Landroid/support/v7/widget/s;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 700
    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Landroid/support/v7/widget/g;->c:Landroid/graphics/PorterDuff$Mode;

    .end local p2    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    invoke-static {p1, p2}, Landroid/support/v7/widget/g;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 701
    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/ar;[I)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/support/v7/widget/ar;
    .param p2, "state"    # [I

    .prologue
    .line 652
    invoke-static {p0}, Landroid/support/v7/widget/s;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 654
    const-string v0, "AppCompatDrawableManager"

    const-string v1, "Mutated drawable is not the same instance as the input."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/widget/ar;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v7/widget/ar;->c:Z

    if-eqz v0, :cond_5

    .line 659
    :cond_2
    iget-boolean v0, p1, Landroid/support/v7/widget/ar;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/support/v7/widget/ar;->a:Landroid/content/res/ColorStateList;

    :goto_1
    iget-boolean v1, p1, Landroid/support/v7/widget/ar;->c:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/support/v7/widget/ar;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v0, v1, p2}, Landroid/support/v7/widget/g;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 667
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 670
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 659
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    sget-object v1, Landroid/support/v7/widget/g;->c:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 664
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3
.end method

.method private static a(Landroid/support/v7/widget/g;)V
    .locals 2
    .param p0, "manager"    # Landroid/support/v7/widget/g;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 97
    const-string v0, "vector"

    new-instance v1, Landroid/support/v7/widget/g$d;

    invoke-direct {v1}, Landroid/support/v7/widget/g$d;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/g;->a(Ljava/lang/String;Landroid/support/v7/widget/g$c;)V

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 100
    const-string v0, "animated-vector"

    new-instance v1, Landroid/support/v7/widget/g$a;

    invoke-direct {v1}, Landroid/support/v7/widget/g$a;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/g;->a(Ljava/lang/String;Landroid/support/v7/widget/g$c;)V

    .line 103
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/support/v7/widget/g$c;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "delegate"    # Landroid/support/v7/widget/g$c;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v7/widget/g;->o:Landroid/support/v4/k/a;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Landroid/support/v4/k/a;

    invoke-direct {v0}, Landroid/support/v4/k/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/g;->o:Landroid/support/v4/k/a;

    .line 497
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/g;->o:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    return-void
.end method

.method static a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 447
    sget-object v4, Landroid/support/v7/widget/g;->c:Landroid/graphics/PorterDuff$Mode;

    .line 448
    .local v4, "tintMode":Landroid/graphics/PorterDuff$Mode;
    const/4 v3, 0x0

    .line 449
    .local v3, "colorAttrSet":Z
    const/4 v2, 0x0

    .line 450
    .local v2, "colorAttr":I
    const/4 v0, -0x1

    .line 452
    .local v0, "alpha":I
    sget-object v5, Landroid/support/v7/widget/g;->h:[I

    invoke-static {v5, p1}, Landroid/support/v7/widget/g;->a([II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 453
    sget v2, Landroid/support/v7/a/b$b;->colorControlNormal:I

    .line 454
    const/4 v3, 0x1

    .line 471
    :cond_0
    :goto_0
    if-eqz v3, :cond_7

    .line 472
    invoke-static {p2}, Landroid/support/v7/widget/s;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 473
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 476
    :cond_1
    invoke-static {p0, v2}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;I)I

    move-result v1

    .line 477
    .local v1, "color":I
    invoke-static {v1, v4}, Landroid/support/v7/widget/g;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 479
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 480
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 488
    :cond_2
    const/4 v5, 0x1

    .line 490
    .end local v1    # "color":I
    :goto_1
    return v5

    .line 455
    :cond_3
    sget-object v5, Landroid/support/v7/widget/g;->j:[I

    invoke-static {v5, p1}, Landroid/support/v7/widget/g;->a([II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 456
    sget v2, Landroid/support/v7/a/b$b;->colorControlActivated:I

    .line 457
    const/4 v3, 0x1

    goto :goto_0

    .line 458
    :cond_4
    sget-object v5, Landroid/support/v7/widget/g;->k:[I

    invoke-static {v5, p1}, Landroid/support/v7/widget/g;->a([II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 459
    const v2, 0x1010031

    .line 460
    const/4 v3, 0x1

    .line 461
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 462
    :cond_5
    sget v5, Landroid/support/v7/a/b$f;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v5, :cond_6

    .line 463
    const v2, 0x1010030

    .line 464
    const/4 v3, 0x1

    .line 465
    const v5, 0x42233333    # 40.8f

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 466
    :cond_6
    sget v5, Landroid/support/v7/a/b$f;->abc_dialog_material_background:I

    if-ne p1, v5, :cond_0

    .line 467
    const v2, 0x1010031

    .line 468
    const/4 v3, 0x1

    goto :goto_0

    .line 490
    :cond_7
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "key"    # J
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 418
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 419
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_1

    .line 420
    iget-object v3, p0, Landroid/support/v7/widget/g;->q:Ljava/lang/Object;

    monitor-enter v3

    .line 421
    :try_start_0
    iget-object v2, p0, Landroid/support/v7/widget/g;->r:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/k/i;

    .line 422
    .local v0, "cache":Landroid/support/v4/k/i;, "Landroid/support/v4/k/i<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v0, :cond_0

    .line 423
    new-instance v0, Landroid/support/v4/k/i;

    .end local v0    # "cache":Landroid/support/v4/k/i;, "Landroid/support/v4/k/i<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-direct {v0}, Landroid/support/v4/k/i;-><init>()V

    .line 424
    .restart local v0    # "cache":Landroid/support/v4/k/i;, "Landroid/support/v4/k/i<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    iget-object v2, p0, Landroid/support/v7/widget/g;->r:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, v2}, Landroid/support/v4/k/i;->b(JLjava/lang/Object;)V

    .line 427
    monitor-exit v3

    .line 428
    const/4 v2, 0x1

    .line 430
    .end local v0    # "cache":Landroid/support/v4/k/i;, "Landroid/support/v4/k/i<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :goto_0
    return v2

    .line 427
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 430
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 720
    instance-of v0, p0, Landroid/support/e/a/i;

    if-nez v0, :cond_0

    const-string v0, "android.graphics.drawable.VectorDrawable"

    .line 721
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 507
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 508
    .local v0, "id":I
    if-ne v0, p1, :cond_1

    .line 509
    const/4 v1, 0x1

    .line 512
    .end local v0    # "id":I
    :cond_0
    return v1

    .line 507
    .restart local v0    # "id":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 585
    sget v0, Landroid/support/v7/a/b$b;->colorButtonNormal:I

    .line 586
    invoke-static {p1, v0}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;I)I

    move-result v0

    .line 585
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/g;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Landroid/support/v7/widget/g$c;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "delegate"    # Landroid/support/v7/widget/g$c;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 501
    iget-object v0, p0, Landroid/support/v7/widget/g;->o:Landroid/support/v4/k/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/g;->o:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 502
    iget-object v0, p0, Landroid/support/v7/widget/g;->o:Landroid/support/v4/k/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/k/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 591
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/g;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    .line 232
    iget-object v5, p0, Landroid/support/v7/widget/g;->s:Landroid/util/TypedValue;

    if-nez v5, :cond_0

    .line 233
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    iput-object v5, p0, Landroid/support/v7/widget/g;->s:Landroid/util/TypedValue;

    .line 235
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/g;->s:Landroid/util/TypedValue;

    .line 236
    .local v4, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 237
    invoke-static {v4}, Landroid/support/v7/widget/g;->a(Landroid/util/TypedValue;)J

    move-result-wide v2

    .line 239
    .local v2, "key":J
    invoke-direct {p0, p1, v2, v3}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 240
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 259
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 246
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget v5, Landroid/support/v7/a/b$f;->abc_cab_background_top_material:I

    if-ne p2, v5, :cond_2

    .line 247
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget v7, Landroid/support/v7/a/b$f;->abc_cab_background_internal_bg:I

    .line 248
    invoke-virtual {p0, p1, v7}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    sget v6, Landroid/support/v7/a/b$f;->abc_cab_background_top_mtrl_alpha:I

    .line 249
    invoke-virtual {p0, p1, v6}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 253
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v0, :cond_3

    .line 254
    iget v5, v4, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 256
    invoke-direct {p0, p1, v2, v3, v0}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_3
    move-object v1, v0

    .line 259
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 595
    sget v0, Landroid/support/v7/a/b$b;->colorAccent:I

    .line 596
    invoke-static {p1, v0}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;I)I

    move-result v0

    .line 595
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/g;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/g;->o:Landroid/support/v4/k/a;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/g;->o:Landroid/support/v4/k/a;

    invoke-virtual {v14}, Landroid/support/v4/k/a;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/g;->p:Landroid/support/v4/k/p;

    if-eqz v14, :cond_2

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/g;->p:Landroid/support/v4/k/p;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/support/v4/k/p;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 312
    .local v3, "cachedTagName":Ljava/lang/String;
    const-string v14, "appcompat_skip_skip"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/g;->o:Landroid/support/v4/k/a;

    .line 313
    invoke-virtual {v14, v3}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_3

    .line 320
    :cond_0
    const/4 v5, 0x0

    .line 390
    .end local v3    # "cachedTagName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 324
    :cond_2
    new-instance v14, Landroid/support/v4/k/p;

    invoke-direct {v14}, Landroid/support/v4/k/p;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v7/widget/g;->p:Landroid/support/v4/k/p;

    .line 327
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/g;->s:Landroid/util/TypedValue;

    if-nez v14, :cond_4

    .line 328
    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/support/v7/widget/g;->s:Landroid/util/TypedValue;

    .line 330
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/g;->s:Landroid/util/TypedValue;

    .line 331
    .local v12, "tv":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 332
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v14, 0x1

    move/from16 v0, p2

    invoke-virtual {v10, v0, v12, v14}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 334
    invoke-static {v12}, Landroid/support/v7/widget/g;->a(Landroid/util/TypedValue;)J

    move-result-wide v8

    .line 336
    .local v8, "key":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 337
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_1

    .line 346
    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v14, :cond_7

    iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 349
    :try_start_0
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 350
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 352
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x2

    if-eq v13, v14, :cond_6

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 356
    :cond_6
    const/4 v14, 0x2

    if-eq v13, v14, :cond_8

    .line 357
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v15, "No start tag found"

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v6

    .line 379
    .local v6, "e":Ljava/lang/Exception;
    const-string v14, "AppCompatDrawableManager"

    const-string v15, "Exception while inflating drawable"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    if-nez v5, :cond_1

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/g;->p:Landroid/support/v4/k/p;

    const-string v15, "appcompat_skip_skip"

    move/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Landroid/support/v4/k/p;->d(ILjava/lang/Object;)V

    goto :goto_0

    .line 360
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    :cond_8
    :try_start_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 362
    .local v11, "tagName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/g;->p:Landroid/support/v4/k/p;

    move/from16 v0, p2

    invoke-virtual {v14, v0, v11}, Landroid/support/v4/k/p;->d(ILjava/lang/Object;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/g;->o:Landroid/support/v4/k/a;

    invoke-virtual {v14, v11}, Landroid/support/v4/k/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/g$c;

    .line 366
    .local v4, "delegate":Landroid/support/v7/widget/g$c;
    if-eqz v4, :cond_9

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    .line 367
    move-object/from16 v0, p1

    invoke-interface {v4, v0, v7, v2, v14}, Landroid/support/v7/widget/g$c;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 370
    :cond_9
    if-eqz v5, :cond_7

    .line 372
    iget v14, v12, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v5, v14}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 373
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9, v5}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_1

    .line 390
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "delegate":Landroid/support/v7/widget/g$c;
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "key":J
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "tv":Landroid/util/TypedValue;
    .end local v13    # "type":I
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 564
    iget-object v2, p0, Landroid/support/v7/widget/g;->n:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_0

    .line 565
    iget-object v2, p0, Landroid/support/v7/widget/g;->n:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/k/p;

    .line 566
    .local v0, "tints":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<Landroid/content/res/ColorStateList;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/support/v4/k/p;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 568
    .end local v0    # "tints":Landroid/support/v4/k/p;, "Landroid/support/v4/k/p<Landroid/content/res/ColorStateList;>;"
    :cond_0
    return-object v1
.end method

.method private e(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 704
    iget-boolean v1, p0, Landroid/support/v7/widget/g;->t:Z

    if-eqz v1, :cond_1

    .line 717
    :cond_0
    return-void

    .line 710
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/g;->t:Z

    .line 711
    sget v1, Landroid/support/v7/a/b$f;->abc_vector_test:I

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 712
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/support/v7/widget/g;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 713
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/g;->t:Z

    .line 714
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "baseColor"    # I
        .annotation build Landroid/support/annotation/k;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x4

    .line 601
    new-array v4, v5, [[I

    .line 602
    .local v4, "states":[[I
    new-array v1, v5, [I

    .line 603
    .local v1, "colors":[I
    const/4 v3, 0x0

    .line 605
    .local v3, "i":I
    sget v5, Landroid/support/v7/a/b$b;->colorControlHighlight:I

    invoke-static {p1, v5}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;I)I

    move-result v0

    .line 606
    .local v0, "colorControlHighlight":I
    sget v5, Landroid/support/v7/a/b$b;->colorButtonNormal:I

    invoke-static {p1, v5}, Landroid/support/v7/widget/ao;->c(Landroid/content/Context;I)I

    move-result v2

    .line 609
    .local v2, "disabledColor":I
    sget-object v5, Landroid/support/v7/widget/ao;->a:[I

    aput-object v5, v4, v3

    .line 610
    aput v2, v1, v3

    .line 611
    add-int/lit8 v3, v3, 0x1

    .line 613
    sget-object v5, Landroid/support/v7/widget/ao;->d:[I

    aput-object v5, v4, v3

    .line 614
    invoke-static {v0, p2}, Landroid/support/v4/d/e;->a(II)I

    move-result v5

    aput v5, v1, v3

    .line 615
    add-int/lit8 v3, v3, 0x1

    .line 617
    sget-object v5, Landroid/support/v7/widget/ao;->b:[I

    aput-object v5, v4, v3

    .line 618
    invoke-static {v0, p2}, Landroid/support/v4/d/e;->a(II)I

    move-result v5

    aput v5, v1, v3

    .line 619
    add-int/lit8 v3, v3, 0x1

    .line 622
    sget-object v5, Landroid/support/v7/widget/ao;->h:[I

    aput-object v5, v4, v3

    .line 623
    aput p2, v1, v3

    .line 624
    add-int/lit8 v3, v3, 0x1

    .line 626
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param
    .param p3, "failIfNotKnown"    # Z

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/support/v7/widget/g;->e(Landroid/content/Context;)V

    .line 197
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/g;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 198
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/g;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    :cond_0
    if-nez v0, :cond_1

    .line 202
    invoke-static {p1, p2}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    :cond_1
    if-eqz v0, :cond_2

    .line 207
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 209
    :cond_2
    if-eqz v0, :cond_3

    .line 211
    invoke-static {v0}, Landroid/support/v7/widget/s;->b(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_3
    return-object v0
.end method

.method a(Landroid/content/Context;Landroid/support/v7/widget/av;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "resources"    # Landroid/support/v7/widget/av;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 435
    invoke-direct {p0, p1, p3}, Landroid/support/v7/widget/g;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 436
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 437
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/av;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 439
    :cond_0
    if-eqz v0, :cond_1

    .line 440
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 442
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 217
    iget-object v2, p0, Landroid/support/v7/widget/g;->q:Ljava/lang/Object;

    monitor-enter v2

    .line 218
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/widget/g;->r:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/k/i;

    .line 219
    .local v0, "cache":Landroid/support/v4/k/i;, "Landroid/support/v4/k/i<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Landroid/support/v4/k/i;->c()V

    .line 223
    :cond_0
    monitor-exit v2

    .line 224
    return-void

    .line 223
    .end local v0    # "cache":Landroid/support/v4/k/i;, "Landroid/support/v4/k/i<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param

    .prologue
    .line 527
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/g;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 529
    .local v0, "tint":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_1

    .line 531
    sget v1, Landroid/support/v7/a/b$f;->abc_edit_text_material:I

    if-ne p2, v1, :cond_2

    .line 532
    sget v1, Landroid/support/v7/a/b$d;->abc_tint_edittext:I

    invoke-static {p1, v1}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 556
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 557
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 560
    :cond_1
    return-object v0

    .line 533
    :cond_2
    sget v1, Landroid/support/v7/a/b$f;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v1, :cond_3

    .line 534
    sget v1, Landroid/support/v7/a/b$d;->abc_tint_switch_track:I

    invoke-static {p1, v1}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 535
    :cond_3
    sget v1, Landroid/support/v7/a/b$f;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_4

    .line 536
    sget v1, Landroid/support/v7/a/b$d;->abc_tint_switch_thumb:I

    invoke-static {p1, v1}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_4
    sget v1, Landroid/support/v7/a/b$f;->abc_btn_default_mtrl_shape:I

    if-ne p2, v1, :cond_5

    .line 538
    invoke-direct {p0, p1}, Landroid/support/v7/widget/g;->b(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 539
    :cond_5
    sget v1, Landroid/support/v7/a/b$f;->abc_btn_borderless_material:I

    if-ne p2, v1, :cond_6

    .line 540
    invoke-direct {p0, p1}, Landroid/support/v7/widget/g;->c(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_6
    sget v1, Landroid/support/v7/a/b$f;->abc_btn_colored_material:I

    if-ne p2, v1, :cond_7

    .line 542
    invoke-direct {p0, p1}, Landroid/support/v7/widget/g;->d(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 543
    :cond_7
    sget v1, Landroid/support/v7/a/b$f;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v1, :cond_8

    sget v1, Landroid/support/v7/a/b$f;->abc_spinner_textfield_background_material:I

    if-ne p2, v1, :cond_9

    .line 545
    :cond_8
    sget v1, Landroid/support/v7/a/b$d;->abc_tint_spinner:I

    invoke-static {p1, v1}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 546
    :cond_9
    sget-object v1, Landroid/support/v7/widget/g;->i:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/g;->a([II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 547
    sget v1, Landroid/support/v7/a/b$b;->colorControlNormal:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/ao;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 548
    :cond_a
    sget-object v1, Landroid/support/v7/widget/g;->l:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/g;->a([II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 549
    sget v1, Landroid/support/v7/a/b$d;->abc_tint_default:I

    invoke-static {p1, v1}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 550
    :cond_b
    sget-object v1, Landroid/support/v7/widget/g;->m:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/g;->a([II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 551
    sget v1, Landroid/support/v7/a/b$d;->abc_tint_btn_checkable:I

    invoke-static {p1, v1}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_c
    sget v1, Landroid/support/v7/a/b$f;->abc_seekbar_thumb_material:I

    if-ne p2, v1, :cond_0

    .line 553
    sget v1, Landroid/support/v7/a/b$d;->abc_tint_seek_thumb:I

    invoke-static {p1, v1}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method
