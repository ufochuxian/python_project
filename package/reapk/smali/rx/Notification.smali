.class public final Lrx/Notification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Notification$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lrx/Notification$Kind;

.field private final b:Ljava/lang/Throwable;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    invoke-direct {v0, v1, v2, v2}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sput-object v0, Lrx/Notification;->d:Lrx/Notification;

    return-void
.end method

.method private constructor <init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "kind"    # Lrx/Notification$Kind;
    .param p3, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification$Kind;",
            "TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lrx/Notification;->c:Ljava/lang/Object;

    .line 81
    iput-object p3, p0, Lrx/Notification;->b:Ljava/lang/Throwable;

    .line 82
    iput-object p1, p0, Lrx/Notification;->a:Lrx/Notification$Kind;

    .line 83
    return-void
.end method

.method public static a()Lrx/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lrx/Notification;->d:Lrx/Notification;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lrx/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lrx/Notification;->d:Lrx/Notification;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lrx/Notification;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lrx/Notification;
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a(Lrx/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    .local p1, "observer":Lrx/f;, "Lrx/f<-TT;>;"
    iget-object v0, p0, Lrx/Notification;->a:Lrx/Notification$Kind;

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lrx/Notification;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/f;->onNext(Ljava/lang/Object;)V

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lrx/Notification;->a:Lrx/Notification$Kind;

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_1

    .line 166
    invoke-interface {p1}, Lrx/f;->onCompleted()V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lrx/Notification;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lrx/Notification;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lrx/Notification;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/Notification;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/Notification;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v2

    .line 211
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 212
    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 219
    check-cast v0, Lrx/Notification;

    .line 220
    .local v0, "notification":Lrx/Notification;, "Lrx/Notification<*>;"
    invoke-virtual {v0}, Lrx/Notification;->f()Lrx/Notification$Kind;

    move-result-object v3

    invoke-virtual {p0}, Lrx/Notification;->f()Lrx/Notification$Kind;

    move-result-object v4

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lrx/Notification;->c:Ljava/lang/Object;

    iget-object v4, v0, Lrx/Notification;->c:Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lrx/Notification;->c:Ljava/lang/Object;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lrx/Notification;->c:Ljava/lang/Object;

    iget-object v4, v0, Lrx/Notification;->c:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lrx/Notification;->b:Ljava/lang/Throwable;

    iget-object v4, v0, Lrx/Notification;->b:Ljava/lang/Throwable;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lrx/Notification;->b:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lrx/Notification;->b:Ljava/lang/Throwable;

    iget-object v4, v0, Lrx/Notification;->b:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public f()Lrx/Notification$Kind;
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lrx/Notification;->a:Lrx/Notification$Kind;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 137
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->f()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 146
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->f()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 195
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->f()Lrx/Notification$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Notification$Kind;->hashCode()I

    move-result v0

    .line 196
    .local v0, "hash":I
    invoke-virtual {p0}, Lrx/Notification;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lrx/Notification;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 199
    :cond_0
    invoke-virtual {p0}, Lrx/Notification;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lrx/Notification;->b()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 202
    :cond_1
    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 155
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->f()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    const/16 v3, 0x20

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lrx/Notification;->f()Lrx/Notification$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lrx/Notification;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lrx/Notification;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    invoke-virtual {p0}, Lrx/Notification;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lrx/Notification;->b()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
