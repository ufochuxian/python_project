.class public final Lrx/h/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
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
.field static final c:[Lrx/h/g$b;

.field static final d:Lrx/h/g$a;

.field static final e:Lrx/h/g$a;


# instance fields
.field final a:Z

.field final b:[Lrx/h/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    new-array v0, v3, [Lrx/h/g$b;

    sput-object v0, Lrx/h/g$a;->c:[Lrx/h/g$b;

    .line 152
    new-instance v0, Lrx/h/g$a;

    const/4 v1, 0x1

    sget-object v2, Lrx/h/g$a;->c:[Lrx/h/g$b;

    invoke-direct {v0, v1, v2}, Lrx/h/g$a;-><init>(Z[Lrx/h/g$b;)V

    sput-object v0, Lrx/h/g$a;->d:Lrx/h/g$a;

    .line 153
    new-instance v0, Lrx/h/g$a;

    sget-object v1, Lrx/h/g$a;->c:[Lrx/h/g$b;

    invoke-direct {v0, v3, v1}, Lrx/h/g$a;-><init>(Z[Lrx/h/g$b;)V

    sput-object v0, Lrx/h/g$a;->e:Lrx/h/g$a;

    return-void
.end method

.method public constructor <init>(Z[Lrx/h/g$b;)V
    .locals 0
    .param p1, "terminated"    # Z
    .param p2, "observers"    # [Lrx/h/g$b;

    .prologue
    .line 155
    .local p0, "this":Lrx/h/g$a;, "Lrx/h/g$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean p1, p0, Lrx/h/g$a;->a:Z

    .line 157
    iput-object p2, p0, Lrx/h/g$a;->b:[Lrx/h/g$b;

    .line 158
    return-void
.end method


# virtual methods
.method public a(Lrx/h/g$b;)Lrx/h/g$a;
    .locals 5
    .param p1, "o"    # Lrx/h/g$b;

    .prologue
    .local p0, "this":Lrx/h/g$a;, "Lrx/h/g$a<TT;>;"
    const/4 v4, 0x0

    .line 160
    iget-object v0, p0, Lrx/h/g$a;->b:[Lrx/h/g$b;

    .line 161
    .local v0, "a":[Lrx/h/g$b;
    array-length v2, v0

    .line 162
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lrx/h/g$b;

    .line 163
    .local v1, "b":[Lrx/h/g$b;
    iget-object v3, p0, Lrx/h/g$a;->b:[Lrx/h/g$b;

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    aput-object p1, v1, v2

    .line 165
    new-instance v3, Lrx/h/g$a;

    iget-boolean v4, p0, Lrx/h/g$a;->a:Z

    invoke-direct {v3, v4, v1}, Lrx/h/g$a;-><init>(Z[Lrx/h/g$b;)V

    return-object v3
.end method

.method public b(Lrx/h/g$b;)Lrx/h/g$a;
    .locals 10
    .param p1, "o"    # Lrx/h/g$b;

    .prologue
    .local p0, "this":Lrx/h/g$a;, "Lrx/h/g$a<TT;>;"
    const/4 v9, 0x0

    .line 168
    iget-object v0, p0, Lrx/h/g$a;->b:[Lrx/h/g$b;

    .line 169
    .local v0, "a":[Lrx/h/g$b;
    array-length v7, v0

    .line 170
    .local v7, "n":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    aget-object v8, v0, v9

    if-ne v8, p1, :cond_1

    .line 171
    sget-object p0, Lrx/h/g$a;->e:Lrx/h/g$a;

    .line 195
    .end local p0    # "this":Lrx/h/g$a;, "Lrx/h/g$a<TT;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 173
    .restart local p0    # "this":Lrx/h/g$a;, "Lrx/h/g$a<TT;>;"
    :cond_1
    if-eqz v7, :cond_0

    .line 176
    add-int/lit8 v8, v7, -0x1

    new-array v2, v8, [Lrx/h/g$b;

    .line 177
    .local v2, "b":[Lrx/h/g$b;
    const/4 v5, 0x0

    .line 178
    .local v5, "j":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 179
    aget-object v1, v0, v4

    .line 180
    .local v1, "ai":Lrx/h/g$b;
    if-eq v1, p1, :cond_5

    .line 181
    add-int/lit8 v8, v7, -0x1

    if-eq v6, v8, :cond_0

    .line 184
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aput-object v1, v2, v6

    .line 178
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "j":I
    .restart local v6    # "j":I
    goto :goto_1

    .line 187
    .end local v1    # "ai":Lrx/h/g$b;
    :cond_2
    if-nez v6, :cond_3

    .line 188
    sget-object p0, Lrx/h/g$a;->e:Lrx/h/g$a;

    goto :goto_0

    .line 190
    :cond_3
    add-int/lit8 v8, v7, -0x1

    if-ge v6, v8, :cond_4

    .line 191
    new-array v3, v6, [Lrx/h/g$b;

    .line 192
    .local v3, "c":[Lrx/h/g$b;
    invoke-static {v2, v9, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    move-object v2, v3

    .line 195
    .end local v3    # "c":[Lrx/h/g$b;
    :cond_4
    new-instance v8, Lrx/h/g$a;

    iget-boolean v9, p0, Lrx/h/g$a;->a:Z

    invoke-direct {v8, v9, v2}, Lrx/h/g$a;-><init>(Z[Lrx/h/g$b;)V

    move-object p0, v8

    goto :goto_0

    .restart local v1    # "ai":Lrx/h/g$b;
    :cond_5
    move v5, v6

    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_2
.end method
