.class public Landroid/support/v7/widget/ak;
.super Landroid/support/v4/view/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ak$b;,
        Landroid/support/v7/widget/ak$c;,
        Landroid/support/v7/widget/ak$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "share_history.xml"

.field private static final e:I = 0x4


# instance fields
.field final b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Landroid/support/v7/widget/ak$a;

.field private f:I

.field private final g:Landroid/support/v7/widget/ak$c;

.field private h:Landroid/support/v7/widget/c$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/support/v4/view/e;-><init>(Landroid/content/Context;)V

    .line 163
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v7/widget/ak;->f:I

    .line 168
    new-instance v0, Landroid/support/v7/widget/ak$c;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ak$c;-><init>(Landroid/support/v7/widget/ak;)V

    iput-object v0, p0, Landroid/support/v7/widget/ak;->g:Landroid/support/v7/widget/ak$c;

    .line 184
    const-string v0, "share_history.xml"

    iput-object v0, p0, Landroid/support/v7/widget/ak;->c:Ljava/lang/String;

    .line 197
    iput-object p1, p0, Landroid/support/v7/widget/ak;->b:Landroid/content/Context;

    .line 198
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 382
    iget-object v1, p0, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/ak$a;

    if-nez v1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/ak;->h:Landroid/support/v7/widget/c$f;

    if-nez v1, :cond_1

    .line 386
    new-instance v1, Landroid/support/v7/widget/ak$b;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ak$b;-><init>(Landroid/support/v7/widget/ak;)V

    iput-object v1, p0, Landroid/support/v7/widget/ak;->h:Landroid/support/v7/widget/c$f;

    .line 388
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ak;->b:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/ak;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v7/widget/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/c;

    move-result-object v0

    .line 389
    .local v0, "dataModel":Landroid/support/v7/widget/c;
    iget-object v1, p0, Landroid/support/v7/widget/ak;->h:Landroid/support/v7/widget/c$f;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/c;->a(Landroid/support/v7/widget/c$f;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 4
    .param p1, "shareIntent"    # Landroid/content/Intent;

    .prologue
    .line 341
    if-eqz p1, :cond_1

    .line 342
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ak;->b(Landroid/content/Intent;)V

    .line 347
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/ak;->b:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/widget/ak;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/support/v7/widget/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/c;

    move-result-object v1

    .line 349
    .local v1, "dataModel":Landroid/support/v7/widget/c;
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/c;->a(Landroid/content/Intent;)V

    .line 350
    return-void
.end method

.method public a(Landroid/support/v7/widget/ak$a;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/ak$a;

    .prologue
    .line 211
    iput-object p1, p0, Landroid/support/v7/widget/ak;->d:Landroid/support/v7/widget/ak$a;

    .line 212
    invoke-direct {p0}, Landroid/support/v7/widget/ak;->i()V

    .line 213
    return-void
.end method

.method public a(Landroid/view/SubMenu;)V
    .locals 10
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    const/4 v9, 0x0

    .line 257
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 259
    iget-object v7, p0, Landroid/support/v7/widget/ak;->b:Landroid/content/Context;

    iget-object v8, p0, Landroid/support/v7/widget/ak;->c:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/support/v7/widget/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/c;

    move-result-object v2

    .line 260
    .local v2, "dataModel":Landroid/support/v7/widget/c;
    iget-object v7, p0, Landroid/support/v7/widget/ak;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 262
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/support/v7/widget/c;->b()I

    move-result v3

    .line 263
    .local v3, "expandedActivityCount":I
    iget v7, p0, Landroid/support/v7/widget/ak;->f:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 266
    .local v1, "collapsedActivityCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 267
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/c;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 268
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v9, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 269
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/widget/ak;->g:Landroid/support/v7/widget/ak$c;

    .line 270
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 266
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    :cond_0
    if-ge v1, v3, :cond_1

    .line 275
    iget-object v7, p0, Landroid/support/v7/widget/ak;->b:Landroid/content/Context;

    sget v8, Landroid/support/v7/a/b$j;->abc_activity_chooser_view_see_all:I

    .line 277
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 275
    invoke-interface {p1, v9, v1, v1, v7}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v4

    .line 278
    .local v4, "expandedSubMenu":Landroid/view/SubMenu;
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 279
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/c;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 280
    .restart local v0    # "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v4, v9, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 281
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v8, p0, Landroid/support/v7/widget/ak;->g:Landroid/support/v7/widget/ak$c;

    .line 282
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 278
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 285
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v4    # "expandedSubMenu":Landroid/view/SubMenu;
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareHistoryFile"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Landroid/support/v7/widget/ak;->c:Ljava/lang/String;

    .line 321
    invoke-direct {p0}, Landroid/support/v7/widget/ak;->i()V

    .line 322
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 7

    .prologue
    .line 221
    new-instance v0, Landroid/support/v7/widget/ActivityChooserView;

    iget-object v4, p0, Landroid/support/v7/widget/ak;->b:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, "activityChooserView":Landroid/support/v7/widget/ActivityChooserView;
    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    iget-object v4, p0, Landroid/support/v7/widget/ak;->b:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/widget/ak;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/support/v7/widget/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/c;

    move-result-object v1

    .line 224
    .local v1, "dataModel":Landroid/support/v7/widget/c;
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->setActivityChooserModel(Landroid/support/v7/widget/c;)V

    .line 228
    .end local v1    # "dataModel":Landroid/support/v7/widget/c;
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 229
    .local v3, "outTypedValue":Landroid/util/TypedValue;
    iget-object v4, p0, Landroid/support/v7/widget/ak;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroid/support/v7/a/b$b;->actionModeShareDrawable:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 230
    iget-object v4, p0, Landroid/support/v7/widget/ak;->b:Landroid/content/Context;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v4, v5}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 231
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActivityChooserView;->setProvider(Landroid/support/v4/view/e;)V

    .line 235
    sget v4, Landroid/support/v7/a/b$j;->abc_shareactionprovider_share_with_application:I

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 237
    sget v4, Landroid/support/v7/a/b$j;->abc_shareactionprovider_share_with:I

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    .line 240
    return-object v0
.end method

.method b(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 410
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 412
    const/high16 v0, 0x8080000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method
