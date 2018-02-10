.class final Lb/a/c$1;
.super Lb/a/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lb/a/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 270
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing override for log method."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 254
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 256
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 257
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Lb/a/c$b;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public varargs a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 262
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 264
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 265
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3, p4}, Lb/a/c$b;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 158
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 160
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 161
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Lb/a/c$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 166
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 168
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 169
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Lb/a/c$b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 174
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 176
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 177
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Lb/a/c$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 182
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 184
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 185
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Lb/a/c$b;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 190
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 192
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 193
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Lb/a/c$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method public varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 198
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 200
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 201
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Lb/a/c$b;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 206
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 208
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 209
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Lb/a/c$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 214
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 216
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 217
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Lb/a/c$b;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 222
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 224
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 225
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Lb/a/c$b;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 230
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 232
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 233
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Lb/a/c$b;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method public varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 238
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 240
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 241
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Lb/a/c$b;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public varargs f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 246
    sget-object v1, Lb/a/c;->a:[Lb/a/c$b;

    .line 248
    .local v1, "forest":[Lb/a/c$b;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 249
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Lb/a/c$b;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method
