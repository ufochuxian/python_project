.class public abstract Landroid/support/v4/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "DocumentFile"


# instance fields
.field private final b:Landroid/support/v4/i/a;


# direct methods
.method constructor <init>(Landroid/support/v4/i/a;)V
    .locals 0
    .param p1, "parent"    # Landroid/support/v4/i/a;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/support/v4/i/a;->b:Landroid/support/v4/i/a;

    .line 85
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/i/a;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "singleUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 111
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 112
    new-instance v1, Landroid/support/v4/i/e;

    invoke-direct {v1, v2, p0, p1}, Landroid/support/v4/i/e;-><init>(Landroid/support/v4/i/a;Landroid/content/Context;Landroid/net/Uri;)V

    .line 114
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Landroid/support/v4/i/a;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 96
    new-instance v0, Landroid/support/v4/i/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/support/v4/i/d;-><init>(Landroid/support/v4/i/a;Ljava/io/File;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/i/a;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "treeUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    .local v0, "version":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 130
    new-instance v1, Landroid/support/v4/i/f;

    .line 131
    invoke-static {p1}, Landroid/support/v4/i/c;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Landroid/support/v4/i/f;-><init>(Landroid/support/v4/i/a;Landroid/content/Context;Landroid/net/Uri;)V

    .line 133
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 143
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 144
    invoke-static {p0, p1}, Landroid/support/v4/i/b;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    .line 146
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Landroid/net/Uri;
.end method

.method public abstract a(Ljava/lang/String;)Landroid/support/v4/i/a;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/i/a;
.end method

.method public b(Ljava/lang/String;)Landroid/support/v4/i/a;
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/support/v4/i/a;->n()[Landroid/support/v4/i/a;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 325
    .local v0, "doc":Landroid/support/v4/i/a;
    invoke-virtual {v0}, Landroid/support/v4/i/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    .end local v0    # "doc":Landroid/support/v4/i/a;
    :goto_1
    return-object v0

    .line 324
    .restart local v0    # "doc":Landroid/support/v4/i/a;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "doc":Landroid/support/v4/i/a;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract c(Ljava/lang/String;)Z
.end method

.method public d()Landroid/support/v4/i/a;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v4/i/a;->b:Landroid/support/v4/i/a;

    return-object v0
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()J
.end method

.method public abstract i()J
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public abstract m()Z
.end method

.method public abstract n()[Landroid/support/v4/i/a;
.end method
