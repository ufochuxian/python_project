.class public Landroid/support/v7/view/menu/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/f/a/a;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    a = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/h$b;,
        Landroid/support/v7/view/menu/h$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "MenuBuilder"

.field private static final j:Ljava/lang/String; = "android:menu:presenters"

.field private static final k:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final l:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final m:[I


# instance fields
.field private A:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/view/menu/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private I:Landroid/support/v7/view/menu/k;

.field private J:Z

.field f:Ljava/lang/CharSequence;

.field g:Landroid/graphics/drawable/Drawable;

.field h:Landroid/view/View;

.field private final n:Landroid/content/Context;

.field private final o:Landroid/content/res/Resources;

.field private p:Z

.field private q:Z

.field private r:Landroid/support/v7/view/menu/h$a;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:I

.field private z:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/view/menu/h;->m:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v0, p0, Landroid/support/v7/view/menu/h;->y:I

    .line 164
    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->B:Z

    .line 166
    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->C:Z

    .line 168
    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->D:Z

    .line 170
    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->E:Z

    .line 172
    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->F:Z

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/h;->G:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 224
    iput-object p1, p0, Landroid/support/v7/view/menu/h;->n:Landroid/content/Context;

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/h;->o:Landroid/content/res/Resources;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/h;->t:Ljava/util/ArrayList;

    .line 229
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->u:Z

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/h;->v:Ljava/util/ArrayList;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/ArrayList;

    .line 233
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->x:Z

    .line 235
    invoke-direct {p0, v1}, Landroid/support/v7/view/menu/h;->g(Z)V

    .line 236
    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/k;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 835
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 836
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/k;

    .line 837
    .local v1, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->c()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 838
    add-int/lit8 v2, v0, 0x1

    .line 842
    .end local v1    # "item":Landroid/support/v7/view/menu/k;
    :goto_1
    return v2

    .line 835
    .restart local v1    # "item":Landroid/support/v7/view/menu/k;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 842
    .end local v1    # "item":Landroid/support/v7/view/menu/k;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private a(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/k;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "ordering"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "defaultShowAsAction"    # I

    .prologue
    .line 460
    new-instance v0, Landroid/support/v7/view/menu/k;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/view/menu/k;-><init>(Landroid/support/v7/view/menu/h;IIIILjava/lang/CharSequence;I)V

    return-object v0
.end method

.method private a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1206
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->e()Landroid/content/res/Resources;

    move-result-object v0

    .line 1208
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1209
    iput-object p5, p0, Landroid/support/v7/view/menu/h;->h:Landroid/view/View;

    .line 1212
    iput-object v2, p0, Landroid/support/v7/view/menu/h;->f:Ljava/lang/CharSequence;

    .line 1213
    iput-object v2, p0, Landroid/support/v7/view/menu/h;->g:Landroid/graphics/drawable/Drawable;

    .line 1232
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 1233
    return-void

    .line 1215
    :cond_0
    if-lez p1, :cond_3

    .line 1216
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/h;->f:Ljava/lang/CharSequence;

    .line 1221
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1222
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/view/menu/h;->g:Landroid/graphics/drawable/Drawable;

    .line 1228
    :cond_2
    :goto_2
    iput-object v2, p0, Landroid/support/v7/view/menu/h;->h:Landroid/view/View;

    goto :goto_0

    .line 1217
    :cond_3
    if-eqz p2, :cond_1

    .line 1218
    iput-object p2, p0, Landroid/support/v7/view/menu/h;->f:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1223
    :cond_4
    if-eqz p4, :cond_2

    .line 1224
    iput-object p4, p0, Landroid/support/v7/view/menu/h;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private a(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .prologue
    .line 570
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->c(Z)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/view/menu/u;Landroid/support/v7/view/menu/o;)Z
    .locals 5
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/u;
    .param p2, "preferredPresenter"    # Landroid/support/v7/view/menu/o;

    .prologue
    .line 300
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 317
    :cond_0
    return v2

    .line 302
    :cond_1
    const/4 v2, 0x0

    .line 305
    .local v2, "result":Z
    if-eqz p2, :cond_2

    .line 306
    invoke-interface {p2, p1}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/u;)Z

    move-result v2

    .line 309
    :cond_2
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 310
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/o;

    .line 311
    .local v0, "presenter":Landroid/support/v7/view/menu/o;
    if-nez v0, :cond_4

    .line 312
    iget-object v4, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_4
    if-nez v2, :cond_3

    .line 314
    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/u;)Z

    move-result v2

    goto :goto_0
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    iget-object v5, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 341
    :goto_0
    return-void

    .line 323
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 325
    .local v2, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 326
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/o;

    .line 327
    .local v1, "presenter":Landroid/support/v7/view/menu/o;
    if-nez v1, :cond_2

    .line 328
    iget-object v6, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 330
    :cond_2
    invoke-interface {v1}, Landroid/support/v7/view/menu/o;->c()I

    move-result v0

    .line 331
    .local v0, "id":I
    if-lez v0, :cond_1

    .line 332
    invoke-interface {v1}, Landroid/support/v7/view/menu/o;->f()Landroid/os/Parcelable;

    move-result-object v4

    .line 333
    .local v4, "state":Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    .line 334
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 340
    .end local v0    # "id":I
    .end local v1    # "presenter":Landroid/support/v7/view/menu/o;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    .end local v4    # "state":Landroid/os/Parcelable;
    :cond_3
    const-string v5, "android:menu:presenters"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private f(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 344
    const-string v5, "android:menu:presenters"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 346
    .local v3, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_0

    iget-object v5, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 362
    :cond_0
    return-void

    .line 348
    :cond_1
    iget-object v5, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 349
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/o;

    .line 350
    .local v2, "presenter":Landroid/support/v7/view/menu/o;
    if-nez v2, :cond_3

    .line 351
    iget-object v6, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_3
    invoke-interface {v2}, Landroid/support/v7/view/menu/o;->c()I

    move-result v0

    .line 354
    .local v0, "id":I
    if-lez v0, :cond_2

    .line 355
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 356
    .local v1, "parcel":Landroid/os/Parcelable;
    if-eqz v1, :cond_2

    .line 357
    invoke-interface {v2, v1}, Landroid/support/v7/view/menu/o;->a(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private f(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .prologue
    .line 284
    iget-object v2, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->h()V

    .line 287
    iget-object v2, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 288
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/o;

    .line 289
    .local v0, "presenter":Landroid/support/v7/view/menu/o;
    if-nez v0, :cond_1

    .line 290
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    :cond_1
    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/o;->b(Z)V

    goto :goto_1

    .line 295
    .end local v0    # "presenter":Landroid/support/v7/view/menu/o;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->i()V

    goto :goto_0
.end method

.method private static g(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .prologue
    .line 768
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 770
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Landroid/support/v7/view/menu/h;->m:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 771
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 774
    :cond_1
    sget-object v1, Landroid/support/v7/view/menu/h;->m:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private g(Z)V
    .locals 3
    .param p1, "shortcutsVisible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 801
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/h;->o:Landroid/content/res/Resources;

    .line 802
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/h;->o:Landroid/content/res/Resources;

    sget v2, Landroid/support/v7/a/b$c;->abc_config_showMenuShortcutsWhenKeyboardPresent:I

    .line 803
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->q:Z

    .line 804
    return-void

    .line 803
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .prologue
    .line 717
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v2

    .line 719
    .local v2, "size":I
    if-gez p2, :cond_0

    .line 720
    const/4 p2, 0x0

    .line 723
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 724
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/k;

    .line 726
    .local v1, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 731
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/support/v7/view/menu/k;
    :goto_1
    return v0

    .line 723
    .restart local v0    # "i":I
    .restart local v1    # "item":Landroid/support/v7/view/menu/k;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    .end local v1    # "item":Landroid/support/v7/view/menu/k;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(I)Landroid/support/v7/view/menu/h;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    .prologue
    .line 239
    iput p1, p0, Landroid/support/v7/view/menu/h;->y:I

    .line 240
    return-object p0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/h;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1267
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/h;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1268
    return-object p0
.end method

.method protected a(Landroid/view/View;)Landroid/support/v7/view/menu/h;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1291
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/h;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1292
    return-object p0
.end method

.method protected a(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/h;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1243
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/h;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1244
    return-object p0
.end method

.method a(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/k;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 914
    iget-object v2, p0, Landroid/support/v7/view/menu/h;->G:Ljava/util/ArrayList;

    .line 915
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 916
    invoke-virtual {p0, v2, p1, p2}, Landroid/support/v7/view/menu/h;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 918
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-object v8

    .line 922
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 923
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 925
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 928
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 929
    .local v7, "size":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 930
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/k;

    goto :goto_0

    .line 933
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->c()Z

    move-result v5

    .line 936
    .local v5, "qwerty":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 937
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/k;

    .line 938
    .local v1, "item":Landroid/support/v7/view/menu/k;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->getAlphabeticShortcut()C

    move-result v6

    .line 940
    .local v6, "shortcutChar":C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 946
    goto :goto_0

    .line 939
    .end local v6    # "shortcutChar":C
    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 936
    .restart local v6    # "shortcutChar":C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 441
    invoke-static {p3}, Landroid/support/v7/view/menu/h;->g(I)I

    move-result v4

    .line 443
    .local v4, "ordering":I
    iget v6, p0, Landroid/support/v7/view/menu/h;->y:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/h;->a(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/k;

    move-result-object v7

    .line 446
    .local v7, "item":Landroid/support/v7/view/menu/k;
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->z:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->z:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v7, v0}, Landroid/support/v7/view/menu/k;->a(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-static {v1, v4}, Landroid/support/v7/view/menu/h;->a(Ljava/util/ArrayList;I)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 452
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 454
    return-object v7
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 365
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/h;->e(Landroid/os/Bundle;)V

    .line 366
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/h$a;)V
    .locals 0
    .param p1, "cb"    # Landroid/support/v7/view/menu/h$a;

    .prologue
    .line 434
    iput-object p1, p0, Landroid/support/v7/view/menu/h;->r:Landroid/support/v7/view/menu/h$a;

    .line 435
    return-void
.end method

.method a(Landroid/support/v7/view/menu/k;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/view/menu/k;

    .prologue
    const/4 v0, 0x1

    .line 1085
    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->u:Z

    .line 1086
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 1087
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o;)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v7/view/menu/o;

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->n:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/o;Landroid/content/Context;)V
    .locals 2
    .param p1, "presenter"    # Landroid/support/v7/view/menu/o;
    .param p2, "menuContext"    # Landroid/content/Context;

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {p1, p2, p0}, Landroid/support/v7/view/menu/o;->a(Landroid/content/Context;Landroid/support/v7/view/menu/h;)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->x:Z

    .line 266
    return-void
.end method

.method public a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1323
    iput-object p1, p0, Landroid/support/v7/view/menu/h;->z:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1324
    return-void
.end method

.method a(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 602
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 604
    .local v2, "group":I
    iget-object v4, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 605
    .local v0, "N":I
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->h()V

    .line 606
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 607
    iget-object v4, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/k;

    .line 608
    .local v1, "curItem":Landroid/support/v7/view/menu/k;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 609
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->h()Z

    move-result v4

    if-nez v4, :cond_1

    .line 606
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 613
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/support/v7/view/menu/k;->b(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 616
    .end local v1    # "curItem":Landroid/support/v7/view/menu/k;
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->i()V

    .line 617
    return-void
.end method

.method a(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/k;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/view/menu/k;>;"
    const/16 v10, 0x43

    .line 870
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->c()Z

    move-result v6

    .line 871
    .local v6, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 872
    .local v4, "metaState":I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 874
    .local v5, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 876
    .local v2, "isKeyCodeMapped":Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 898
    :cond_0
    return-void

    .line 881
    :cond_1
    iget-object v8, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 882
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 883
    iget-object v8, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/k;

    .line 884
    .local v3, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 885
    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/h;

    invoke-virtual {v8, p1, p2, p3}, Landroid/support/v7/view/menu/h;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 887
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->getAlphabeticShortcut()C

    move-result v7

    .line 888
    .local v7, "shortcutChar":C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    if-ne p2, v10, :cond_4

    .line 894
    :cond_3
    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 895
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 887
    .end local v7    # "shortcutChar":C
    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public a(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 792
    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->q:Z

    if-ne v0, p1, :cond_0

    .line 798
    :goto_0
    return-void

    .line 796
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/h;->g(Z)V

    .line 797
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->c(Z)V

    goto :goto_0
.end method

.method a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Landroid/support/v7/view/menu/h;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 822
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->r:Landroid/support/v7/view/menu/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/h;->r:Landroid/support/v7/view/menu/h$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/h$a;->a(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/MenuItem;I)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .prologue
    .line 959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/o;I)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/o;I)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "preferredPresenter"    # Landroid/support/v7/view/menu/o;
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 963
    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/k;

    .line 965
    .local v1, "itemImpl":Landroid/support/v7/view/menu/k;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v0, v6

    .line 1002
    :cond_1
    :goto_0
    return v0

    .line 969
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->b()Z

    move-result v0

    .line 971
    .local v0, "invoked":Z
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->a()Landroid/support/v4/view/e;

    move-result-object v2

    .line 972
    .local v2, "provider":Landroid/support/v4/view/e;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/support/v4/view/e;->g()Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v5

    .line 973
    .local v3, "providerHasSubMenu":Z
    :goto_1
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->o()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 974
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->expandActionView()Z

    move-result v6

    or-int/2addr v0, v6

    .line 975
    if-eqz v0, :cond_1

    .line 976
    invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/h;->b(Z)V

    goto :goto_0

    .end local v3    # "providerHasSubMenu":Z
    :cond_3
    move v3, v6

    .line 972
    goto :goto_1

    .line 978
    .restart local v3    # "providerHasSubMenu":Z
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->hasSubMenu()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_9

    .line 979
    :cond_5
    and-int/lit8 v7, p3, 0x4

    if-nez v7, :cond_6

    .line 981
    invoke-virtual {p0, v6}, Landroid/support/v7/view/menu/h;->b(Z)V

    .line 984
    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_7

    .line 985
    new-instance v6, Landroid/support/v7/view/menu/u;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->f()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0, v1}, Landroid/support/v7/view/menu/u;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/view/menu/k;->a(Landroid/support/v7/view/menu/u;)V

    .line 988
    :cond_7
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/u;

    .line 989
    .local v4, "subMenu":Landroid/support/v7/view/menu/u;
    if-eqz v3, :cond_8

    .line 990
    invoke-virtual {v2, v4}, Landroid/support/v4/view/e;->a(Landroid/view/SubMenu;)V

    .line 992
    :cond_8
    invoke-direct {p0, v4, p2}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/u;Landroid/support/v7/view/menu/o;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 993
    if-nez v0, :cond_1

    .line 994
    invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/h;->b(Z)V

    goto :goto_0

    .line 997
    .end local v4    # "subMenu":Landroid/support/v7/view/menu/u;
    :cond_9
    and-int/lit8 v6, p3, 0x1

    if-nez v6, :cond_1

    .line 998
    invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/h;->b(Z)V

    goto :goto_0
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->o:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/view/menu/h;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 480
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->o:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/view/menu/h;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 475
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/h;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 465
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/h;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 510
    iget-object v10, p0, Landroid/support/v7/view/menu/h;->n:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 511
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 512
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 513
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 515
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 516
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->removeGroup(I)V

    .line 519
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 520
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 521
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 523
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 526
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Landroid/support/v7/view/menu/h;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    .line 527
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    .line 528
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 529
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 530
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 519
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 513
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 521
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 534
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->o:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/view/menu/h;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 504
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->o:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/view/menu/h;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 495
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/h;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/k;

    .line 496
    .local v0, "item":Landroid/support/v7/view/menu/k;
    new-instance v1, Landroid/support/v7/view/menu/u;

    iget-object v2, p0, Landroid/support/v7/view/menu/h;->n:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Landroid/support/v7/view/menu/u;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)V

    .line 497
    .local v1, "subMenu":Landroid/support/v7/view/menu/u;
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/k;->a(Landroid/support/v7/view/menu/u;)V

    .line 499
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/h;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 582
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->B:Z

    .line 583
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->clear()V

    .line 584
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->clearHeader()V

    .line 585
    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->B:Z

    .line 586
    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->C:Z

    .line 587
    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->D:Z

    .line 588
    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 589
    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 578
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/view/menu/h;->a(IZ)V

    .line 579
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/h;->f(Landroid/os/Bundle;)V

    .line 370
    return-void
.end method

.method b(Landroid/support/v7/view/menu/k;)V
    .locals 1
    .param p1, "item"    # Landroid/support/v7/view/menu/k;

    .prologue
    const/4 v0, 0x1

    .line 1096
    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->x:Z

    .line 1097
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 1098
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/o;)V
    .locals 4
    .param p1, "presenter"    # Landroid/support/v7/view/menu/o;

    .prologue
    .line 275
    iget-object v2, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 276
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/o;

    .line 277
    .local v0, "item":Landroid/support/v7/view/menu/o;
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    .line 278
    :cond_1
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    .end local v0    # "item":Landroid/support/v7/view/menu/o;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 4
    .param p1, "closeAllMenus"    # Z

    .prologue
    .line 1014
    iget-boolean v2, p0, Landroid/support/v7/view/menu/h;->F:Z

    if-eqz v2, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1016
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/view/menu/h;->F:Z

    .line 1017
    iget-object v2, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1018
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/o;

    .line 1019
    .local v0, "presenter":Landroid/support/v7/view/menu/o;
    if-nez v0, :cond_1

    .line 1020
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1022
    :cond_1
    invoke-interface {v0, p0, p1}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/h;Z)V

    goto :goto_1

    .line 1025
    .end local v0    # "presenter":Landroid/support/v7/view/menu/o;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v7/view/menu/h;->F:Z

    goto :goto_0
.end method

.method public c(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 700
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v2

    .line 702
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 703
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/k;

    .line 704
    .local v1, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 709
    .end local v0    # "i":I
    .end local v1    # "item":Landroid/support/v7/view/menu/k;
    :goto_1
    return v0

    .line 702
    .restart local v0    # "i":I
    .restart local v1    # "item":Landroid/support/v7/view/menu/k;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    .end local v1    # "item":Landroid/support/v7/view/menu/k;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outStates"    # Landroid/os/Bundle;

    .prologue
    .line 373
    const/4 v5, 0x0

    .line 375
    .local v5, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v2

    .line 376
    .local v2, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 377
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 378
    .local v1, "item":Landroid/view/MenuItem;
    invoke-static {v1}, Landroid/support/v4/view/u;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    .line 379
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 380
    if-nez v5, :cond_0

    .line 381
    new-instance v5, Landroid/util/SparseArray;

    .end local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 383
    .restart local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 384
    invoke-static {v1}, Landroid/support/v4/view/u;->e(Landroid/view/MenuItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 385
    const-string v6, "android:menu:expandedactionview"

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 388
    :cond_1
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 389
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/u;

    .line 390
    .local v3, "subMenu":Landroid/support/v7/view/menu/u;
    invoke-virtual {v3, p1}, Landroid/support/v7/view/menu/u;->c(Landroid/os/Bundle;)V

    .line 376
    .end local v3    # "subMenu":Landroid/support/v7/view/menu/u;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_4

    .line 395
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 397
    :cond_4
    return-void
.end method

.method public c(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1041
    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->B:Z

    if-nez v0, :cond_2

    .line 1042
    if-eqz p1, :cond_0

    .line 1043
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->u:Z

    .line 1044
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->x:Z

    .line 1047
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/h;->f(Z)V

    .line 1054
    :cond_1
    :goto_0
    return-void

    .line 1049
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->C:Z

    .line 1050
    if-eqz p1, :cond_1

    .line 1051
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->D:Z

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->p:Z

    return v0
.end method

.method public c(Landroid/support/v7/view/menu/k;)Z
    .locals 5
    .param p1, "item"    # Landroid/support/v7/view/menu/k;

    .prologue
    .line 1335
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 1353
    :cond_0
    :goto_0
    return v0

    .line 1337
    :cond_1
    const/4 v0, 0x0

    .line 1339
    .local v0, "expanded":Z
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->h()V

    .line 1340
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1341
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/o;

    .line 1342
    .local v1, "presenter":Landroid/support/v7/view/menu/o;
    if-nez v1, :cond_3

    .line 1343
    iget-object v4, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1344
    :cond_3
    invoke-interface {v1, p0, p1}, Landroid/support/v7/view/menu/o;->a(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1348
    .end local v1    # "presenter":Landroid/support/v7/view/menu/o;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->i()V

    .line 1350
    if-eqz v0, :cond_0

    .line 1351
    iput-object p1, p0, Landroid/support/v7/view/menu/h;->I:Landroid/support/v7/view/menu/k;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->I:Landroid/support/v7/view/menu/k;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->I:Landroid/support/v7/view/menu/k;

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->d(Landroid/support/v7/view/menu/k;)Z

    .line 596
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 598
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 599
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1197
    iput-object v0, p0, Landroid/support/v7/view/menu/h;->g:Landroid/graphics/drawable/Drawable;

    .line 1198
    iput-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/lang/CharSequence;

    .line 1199
    iput-object v0, p0, Landroid/support/v7/view/menu/h;->h:Landroid/view/View;

    .line 1201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 1202
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->b(Z)V

    .line 1031
    return-void
.end method

.method public d(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 713
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/h;->a(II)I

    move-result v0

    return v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "states"    # Landroid/os/Bundle;

    .prologue
    .line 400
    if-nez p1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->a()Ljava/lang/String;

    move-result-object v8

    .line 404
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 407
    .local v7, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v3

    .line 408
    .local v3, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 409
    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/h;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 410
    .local v2, "item":Landroid/view/MenuItem;
    invoke-static {v2}, Landroid/support/v4/view/u;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v6

    .line 411
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 412
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 414
    :cond_2
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 415
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/u;

    .line 416
    .local v5, "subMenu":Landroid/support/v7/view/menu/u;
    invoke-virtual {v5, p1}, Landroid/support/v7/view/menu/u;->d(Landroid/os/Bundle;)V

    .line 408
    .end local v5    # "subMenu":Landroid/support/v7/view/menu/u;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 420
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    const-string v8, "android:menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 421
    .local v0, "expandedId":I
    if-lez v0, :cond_0

    .line 422
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 423
    .local v4, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 424
    invoke-static {v4}, Landroid/support/v4/view/u;->c(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1327
    iput-boolean p1, p0, Landroid/support/v7/view/menu/h;->E:Z

    .line 1328
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->q:Z

    return v0
.end method

.method public d(Landroid/support/v7/view/menu/k;)Z
    .locals 5
    .param p1, "item"    # Landroid/support/v7/view/menu/k;

    .prologue
    .line 1357
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/view/menu/h;->I:Landroid/support/v7/view/menu/k;

    if-eq v3, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1375
    :cond_1
    :goto_0
    return v0

    .line 1359
    :cond_2
    const/4 v0, 0x0

    .line 1361
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->h()V

    .line 1362
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1363
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/o;

    .line 1364
    .local v1, "presenter":Landroid/support/v7/view/menu/o;
    if-nez v1, :cond_4

    .line 1365
    iget-object v4, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1366
    :cond_4
    invoke-interface {v1, p0, p1}, Landroid/support/v7/view/menu/o;->b(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/k;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1370
    .end local v1    # "presenter":Landroid/support/v7/view/menu/o;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->i()V

    .line 1372
    if-eqz v0, :cond_1

    .line 1373
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/view/menu/h;->I:Landroid/support/v7/view/menu/k;

    goto :goto_0
.end method

.method e()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->o:Landroid/content/res/Resources;

    return-object v0
.end method

.method protected e(I)Landroid/support/v7/view/menu/h;
    .locals 6
    .param p1, "titleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1255
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/h;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1256
    return-object p0
.end method

.method public e(Z)V
    .locals 0
    .param p1, "override"    # Z

    .prologue
    .line 1388
    iput-boolean p1, p0, Landroid/support/v7/view/menu/h;->J:Z

    .line 1389
    return-void
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->n:Landroid/content/Context;

    return-object v0
.end method

.method protected f(I)Landroid/support/v7/view/menu/h;
    .locals 6
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1279
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/h;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1280
    return-object p0
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 682
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v3

    .line 683
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 684
    iget-object v4, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/k;

    .line 685
    .local v1, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 696
    .end local v1    # "item":Landroid/support/v7/view/menu/k;
    :goto_1
    return-object v1

    .line 687
    .restart local v1    # "item":Landroid/support/v7/view/menu/k;
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 688
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 690
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 691
    goto :goto_1

    .line 683
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    .end local v1    # "item":Landroid/support/v7/view/menu/k;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public g()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->r:Landroid/support/v7/view/menu/h$a;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->r:Landroid/support/v7/view/menu/h$a;

    invoke-interface {v0, p0}, Landroid/support/v7/view/menu/h$a;->a(Landroid/support/v7/view/menu/h;)V

    .line 832
    :cond_0
    return-void
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 741
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1062
    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->B:Z

    if-nez v0, :cond_0

    .line 1063
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/menu/h;->B:Z

    .line 1064
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->C:Z

    .line 1065
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->D:Z

    .line 1067
    :cond_0
    return-void
.end method

.method public hasVisibleItems()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 664
    iget-boolean v4, p0, Landroid/support/v7/view/menu/h;->J:Z

    if-eqz v4, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v3

    .line 668
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->size()I

    move-result v2

    .line 670
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 671
    iget-object v4, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/k;

    .line 672
    .local v1, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 677
    .end local v1    # "item":Landroid/support/v7/view/menu/k;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1070
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->B:Z

    .line 1072
    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->C:Z

    if-eqz v0, :cond_0

    .line 1073
    iput-boolean v1, p0, Landroid/support/v7/view/menu/h;->C:Z

    .line 1074
    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->D:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 1076
    :cond_0
    return-void
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 746
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/h;->a(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/k;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1102
    iget-boolean v3, p0, Landroid/support/v7/view/menu/h;->u:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/view/menu/h;->t:Ljava/util/ArrayList;

    .line 1117
    :goto_0
    return-object v3

    .line 1105
    :cond_0
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1107
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1109
    .local v2, "itemsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1110
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/k;

    .line 1111
    .local v1, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v1}, Landroid/support/v7/view/menu/k;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/view/menu/h;->t:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1114
    .end local v1    # "item":Landroid/support/v7/view/menu/k;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v7/view/menu/h;->u:Z

    .line 1115
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/view/menu/h;->x:Z

    .line 1117
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->t:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public k()V
    .locals 9

    .prologue
    .line 1147
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v6

    .line 1149
    .local v6, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/k;>;"
    iget-boolean v7, p0, Landroid/support/v7/view/menu/h;->x:Z

    if-nez v7, :cond_0

    .line 1184
    :goto_0
    return-void

    .line 1154
    :cond_0
    const/4 v0, 0x0

    .line 1155
    .local v0, "flagged":Z
    iget-object v7, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1156
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/o;

    .line 1157
    .local v4, "presenter":Landroid/support/v7/view/menu/o;
    if-nez v4, :cond_1

    .line 1158
    iget-object v8, p0, Landroid/support/v7/view/menu/h;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1160
    :cond_1
    invoke-interface {v4}, Landroid/support/v7/view/menu/o;->b()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 1164
    .end local v4    # "presenter":Landroid/support/v7/view/menu/o;
    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v7/view/menu/o;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 1165
    iget-object v7, p0, Landroid/support/v7/view/menu/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1166
    iget-object v7, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1167
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1168
    .local v3, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_5

    .line 1169
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/k;

    .line 1170
    .local v2, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v2}, Landroid/support/v7/view/menu/k;->k()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1171
    iget-object v7, p0, Landroid/support/v7/view/menu/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1173
    :cond_3
    iget-object v7, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1179
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/support/v7/view/menu/k;
    .end local v3    # "itemsSize":I
    :cond_4
    iget-object v7, p0, Landroid/support/v7/view/menu/h;->v:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1180
    iget-object v7, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1181
    iget-object v7, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->j()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1183
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/support/v7/view/menu/h;->x:Z

    goto :goto_0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1187
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->k()V

    .line 1188
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method public m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/view/menu/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1192
    invoke-virtual {p0}, Landroid/support/v7/view/menu/h;->k()V

    .line 1193
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public o()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public p()Landroid/view/View;
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->h:Landroid/view/View;

    return-object v0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 955
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .prologue
    .line 847
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/h;->a(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/k;

    move-result-object v1

    .line 849
    .local v1, "item":Landroid/support/v7/view/menu/k;
    const/4 v0, 0x0

    .line 851
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 852
    invoke-virtual {p0, v1, p3}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 855
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 856
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/h;->b(Z)V

    .line 859
    :cond_1
    return v0
.end method

.method public q()Landroid/support/v7/view/menu/h;
    .locals 0

    .prologue
    .line 1312
    return-object p0
.end method

.method r()Z
    .locals 1

    .prologue
    .line 1331
    iget-boolean v0, p0, Landroid/support/v7/view/menu/h;->E:Z

    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .param p1, "group"    # I

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->d(I)I

    move-result v0

    .line 546
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 547
    iget-object v4, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 548
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .local v2, "numRemoved":I
    move v3, v2

    .line 549
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/k;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 551
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Landroid/support/v7/view/menu/h;->a(IZ)V

    move v3, v2

    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_0

    .line 555
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 557
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/h;->c(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/view/menu/h;->a(IZ)V

    .line 540
    return-void
.end method

.method public s()Landroid/support/v7/view/menu/k;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->I:Landroid/support/v7/view/menu/k;

    return-object v0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 621
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 623
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 624
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/k;

    .line 625
    .local v2, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v2}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 626
    invoke-virtual {v2, p3}, Landroid/support/v7/view/menu/k;->a(Z)V

    .line 627
    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/k;->setCheckable(Z)Landroid/view/MenuItem;

    .line 623
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    .end local v2    # "item":Landroid/support/v7/view/menu/k;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 652
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 654
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 655
    iget-object v3, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/k;

    .line 656
    .local v2, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v2}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 657
    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/k;->setEnabled(Z)Landroid/view/MenuItem;

    .line 654
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v2    # "item":Landroid/support/v7/view/menu/k;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 634
    iget-object v4, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 639
    .local v0, "N":I
    const/4 v1, 0x0

    .line 640
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 641
    iget-object v4, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/k;

    .line 642
    .local v3, "item":Landroid/support/v7/view/menu/k;
    invoke-virtual {v3}, Landroid/support/v7/view/menu/k;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 643
    invoke-virtual {v3, p2}, Landroid/support/v7/view/menu/k;->c(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 640
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 647
    .end local v3    # "item":Landroid/support/v7/view/menu/k;
    :cond_1
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 648
    :cond_2
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 751
    iput-boolean p1, p0, Landroid/support/v7/view/menu/h;->p:Z

    .line 753
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/h;->c(Z)V

    .line 754
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Landroid/support/v7/view/menu/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
