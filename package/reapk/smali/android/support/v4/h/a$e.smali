.class Landroid/support/v4/h/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/h/a$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RealHelper:",
        "Landroid/support/v4/h/e;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/h/a$h;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRealHelper;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/support/v4/h/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRealHelper;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Landroid/support/v4/h/a$e;, "Landroid/support/v4/h/a$e<TRealHelper;>;"
    .local p1, "helper":Landroid/support/v4/h/e;, "TRealHelper;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Landroid/support/v4/h/a$e;->a:Landroid/support/v4/h/e;

    .line 163
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Landroid/support/v4/h/a$e;, "Landroid/support/v4/h/a$e<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/h/a$e;->a:Landroid/support/v4/h/e;

    invoke-virtual {v0}, Landroid/support/v4/h/e;->a()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1
    .param p1, "scaleMode"    # I

    .prologue
    .line 167
    .local p0, "this":Landroid/support/v4/h/a$e;, "Landroid/support/v4/h/a$e<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/h/a$e;->a:Landroid/support/v4/h/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/e;->a(I)V

    .line 168
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/h/a$a;)V
    .locals 2
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/h/a$a;

    .prologue
    .line 198
    .local p0, "this":Landroid/support/v4/h/a$e;, "Landroid/support/v4/h/a$e<TRealHelper;>;"
    const/4 v0, 0x0

    .line 199
    .local v0, "delegateCallback":Landroid/support/v4/h/e$a;
    if-eqz p3, :cond_0

    .line 200
    new-instance v0, Landroid/support/v4/h/a$e$1;

    .end local v0    # "delegateCallback":Landroid/support/v4/h/e$a;
    invoke-direct {v0, p0, p3}, Landroid/support/v4/h/a$e$1;-><init>(Landroid/support/v4/h/a$e;Landroid/support/v4/h/a$a;)V

    .line 207
    .restart local v0    # "delegateCallback":Landroid/support/v4/h/e$a;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/h/a$e;->a:Landroid/support/v4/h/e;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/h/e;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/h/e$a;)V

    .line 208
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/h/a$a;)V
    .locals 2
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/h/a$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Landroid/support/v4/h/a$e;, "Landroid/support/v4/h/a$e<TRealHelper;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, "delegateCallback":Landroid/support/v4/h/e$a;
    if-eqz p3, :cond_0

    .line 215
    new-instance v0, Landroid/support/v4/h/a$e$2;

    .end local v0    # "delegateCallback":Landroid/support/v4/h/e$a;
    invoke-direct {v0, p0, p3}, Landroid/support/v4/h/a$e$2;-><init>(Landroid/support/v4/h/a$e;Landroid/support/v4/h/a$a;)V

    .line 222
    .restart local v0    # "delegateCallback":Landroid/support/v4/h/e$a;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/h/a$e;->a:Landroid/support/v4/h/e;

    invoke-virtual {v1, p1, p2, v0}, Landroid/support/v4/h/e;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/h/e$a;)V

    .line 223
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Landroid/support/v4/h/a$e;, "Landroid/support/v4/h/a$e<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/h/a$e;->a:Landroid/support/v4/h/e;

    invoke-virtual {v0}, Landroid/support/v4/h/e;->c()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1
    .param p1, "colorMode"    # I

    .prologue
    .line 177
    .local p0, "this":Landroid/support/v4/h/a$e;, "Landroid/support/v4/h/a$e<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/h/a$e;->a:Landroid/support/v4/h/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/e;->b(I)V

    .line 178
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Landroid/support/v4/h/a$e;, "Landroid/support/v4/h/a$e<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/h/a$e;->a:Landroid/support/v4/h/e;

    invoke-virtual {v0}, Landroid/support/v4/h/e;->b()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 187
    .local p0, "this":Landroid/support/v4/h/a$e;, "Landroid/support/v4/h/a$e<TRealHelper;>;"
    iget-object v0, p0, Landroid/support/v4/h/a$e;->a:Landroid/support/v4/h/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/e;->c(I)V

    .line 188
    return-void
.end method
