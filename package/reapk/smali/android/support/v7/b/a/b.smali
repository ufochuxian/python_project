.class public final Landroid/support/v7/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/b/a/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AppCompatResources"

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/b/a/b$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/b/a/b;->b:Ljava/lang/ThreadLocal;

    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Landroid/support/v7/b/a/b;->c:Ljava/util/WeakHashMap;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/b/a/b;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/l;
        .end annotation
    .end param

    .prologue
    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 65
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    invoke-static {p0, p1}, Landroid/support/v7/b/a/b;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 70
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 74
    invoke-static {p0, p1}, Landroid/support/v7/b/a/b;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    .line 77
    invoke-static {p0, p1, v0}, Landroid/support/v7/b/a/b;->a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {p0, p1}, Landroid/support/v4/content/d;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method private static a()Landroid/util/TypedValue;
    .locals 2
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 169
    sget-object v1, Landroid/support/v7/b/a/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 170
    .local v0, "tv":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "tv":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 172
    .restart local v0    # "tv":Landroid/util/TypedValue;
    sget-object v1, Landroid/support/v7/b/a/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 174
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/l;
        .end annotation
    .end param
    .param p2, "value"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 146
    sget-object v2, Landroid/support/v7/b/a/b;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    sget-object v1, Landroid/support/v7/b/a/b;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 148
    .local v0, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v7/b/a/b$a;>;"
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v7/b/a/b$a;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 150
    .restart local v0    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v7/b/a/b$a;>;"
    sget-object v1, Landroid/support/v7/b/a/b;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    new-instance v1, Landroid/support/v7/b/a/b$a;

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, p2, v3}, Landroid/support/v7/b/a/b$a;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V

    .line 152
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 154
    monitor-exit v2

    .line 155
    return-void

    .line 154
    .end local v0    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v7/b/a/b$a;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/o;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Landroid/support/v7/widget/g;->a()Landroid/support/v7/widget/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/g;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-static {p0, p1}, Landroid/support/v7/b/a/b;->e(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    :goto_0
    return-object v3

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 116
    .local v2, "xml":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/support/v7/b/a/a;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "AppCompatResources"

    const-string v5, "Failed to inflate ColorStateList, leaving it to the framework"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/l;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 126
    sget-object v3, Landroid/support/v7/b/a/b;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 127
    :try_start_0
    sget-object v2, Landroid/support/v7/b/a/b;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 128
    .local v0, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v7/b/a/b$a;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 129
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/b/a/b$a;

    .line 130
    .local v1, "entry":Landroid/support/v7/b/a/b$a;
    if-eqz v1, :cond_1

    .line 131
    iget-object v2, v1, Landroid/support/v7/b/a/b$a;->b:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, v1, Landroid/support/v7/b/a/b$a;->a:Landroid/content/res/ColorStateList;

    monitor-exit v3

    .line 141
    .end local v1    # "entry":Landroid/support/v7/b/a/b$a;
    :goto_0
    return-object v2

    .line 136
    .restart local v1    # "entry":Landroid/support/v7/b/a/b$a;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 140
    .end local v1    # "entry":Landroid/support/v7/b/a/b$a;
    :cond_1
    monitor-exit v3

    .line 141
    const/4 v2, 0x0

    goto :goto_0

    .line 140
    .end local v0    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v7/b/a/b$a;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static e(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/l;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    .local v0, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroid/support/v7/b/a/b;->a()Landroid/util/TypedValue;

    move-result-object v1

    .line 161
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 163
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
