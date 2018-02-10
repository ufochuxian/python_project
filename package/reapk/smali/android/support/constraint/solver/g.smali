.class Landroid/support/constraint/solver/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/constraint/solver/a;

.field private b:Landroid/support/constraint/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/a;)V
    .locals 1
    .param p1, "amount"    # Landroid/support/constraint/solver/a;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 25
    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 43
    iput-object p1, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/a;Landroid/support/constraint/solver/g;)V
    .locals 2
    .param p1, "amount"    # Landroid/support/constraint/solver/a;
    .param p2, "variable"    # Landroid/support/constraint/solver/g;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 25
    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 84
    new-instance v0, Landroid/support/constraint/solver/a;

    invoke-direct {v0, p1}, Landroid/support/constraint/solver/a;-><init>(Landroid/support/constraint/solver/a;)V

    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 85
    iget-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    iget-object v1, p2, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/a;->c(Landroid/support/constraint/solver/a;)Landroid/support/constraint/solver/a;

    .line 86
    invoke-virtual {p2}, Landroid/support/constraint/solver/g;->c()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/g;)V
    .locals 2
    .param p1, "v"    # Landroid/support/constraint/solver/g;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 25
    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 94
    new-instance v0, Landroid/support/constraint/solver/a;

    iget-object v1, p1, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/a;-><init>(Landroid/support/constraint/solver/a;)V

    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 95
    invoke-virtual {p1}, Landroid/support/constraint/solver/g;->c()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/i;I)V
    .locals 1
    .param p1, "system"    # Landroid/support/constraint/solver/i;
    .param p2, "amount"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 25
    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 64
    new-instance v0, Landroid/support/constraint/solver/a;

    invoke-direct {v0, p2}, Landroid/support/constraint/solver/a;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/i;ILjava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 1
    .param p1, "system"    # Landroid/support/constraint/solver/i;
    .param p2, "amount"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 25
    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 54
    new-instance v0, Landroid/support/constraint/solver/a;

    invoke-direct {v0, p2}, Landroid/support/constraint/solver/a;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 55
    invoke-virtual {p1, p3, p4}, Landroid/support/constraint/solver/i;->a(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/i;Landroid/support/constraint/solver/a;Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 1
    .param p1, "system"    # Landroid/support/constraint/solver/i;
    .param p2, "amount"    # Landroid/support/constraint/solver/a;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 25
    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 34
    iput-object p2, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 35
    invoke-virtual {p1, p3, p4}, Landroid/support/constraint/solver/i;->a(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/i;Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 2
    .param p1, "system"    # Landroid/support/constraint/solver/i;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 25
    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 74
    new-instance v0, Landroid/support/constraint/solver/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/a;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 75
    invoke-virtual {p1, p2, p3}, Landroid/support/constraint/solver/i;->a(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    .line 76
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/SolverVariable;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/support/constraint/solver/a;)V
    .locals 0
    .param p1, "amount"    # Landroid/support/constraint/solver/a;

    .prologue
    .line 149
    iput-object p1, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    .line 150
    return-void
.end method

.method public a(Landroid/support/constraint/solver/g;)Z
    .locals 3
    .param p1, "variable"    # Landroid/support/constraint/solver/g;

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0}, Landroid/support/constraint/solver/g;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p1}, Landroid/support/constraint/solver/g;->d()Z

    move-result v0

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/g;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/support/constraint/solver/g;->c()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/g;->c()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Landroid/support/constraint/solver/SolverVariable$Type;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->CONSTANT:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    goto :goto_0
.end method

.method public b(Landroid/support/constraint/solver/a;)V
    .locals 1
    .param p1, "amount"    # Landroid/support/constraint/solver/a;

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/a;->c(Landroid/support/constraint/solver/a;)Landroid/support/constraint/solver/a;

    .line 209
    return-void
.end method

.method public b(Landroid/support/constraint/solver/g;)V
    .locals 2
    .param p1, "variable"    # Landroid/support/constraint/solver/g;

    .prologue
    .line 180
    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/g;->a(Landroid/support/constraint/solver/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    iget-object v1, p1, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/a;->a(Landroid/support/constraint/solver/a;)Landroid/support/constraint/solver/a;

    .line 183
    :cond_0
    return-void
.end method

.method public c()Landroid/support/constraint/solver/SolverVariable;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    return-object v0
.end method

.method public c(Landroid/support/constraint/solver/g;)V
    .locals 2
    .param p1, "variable"    # Landroid/support/constraint/solver/g;

    .prologue
    .line 190
    invoke-virtual {p1, p0}, Landroid/support/constraint/solver/g;->a(Landroid/support/constraint/solver/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    iget-object v1, p1, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/a;->b(Landroid/support/constraint/solver/a;)Landroid/support/constraint/solver/a;

    .line 193
    :cond_0
    return-void
.end method

.method public d(Landroid/support/constraint/solver/g;)V
    .locals 1
    .param p1, "variable"    # Landroid/support/constraint/solver/g;

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/support/constraint/solver/g;->e()Landroid/support/constraint/solver/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/g;->b(Landroid/support/constraint/solver/a;)V

    .line 201
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Landroid/support/constraint/solver/a;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    return-object v0
.end method

.method public e(Landroid/support/constraint/solver/g;)V
    .locals 2
    .param p1, "variable"    # Landroid/support/constraint/solver/g;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    iget-object v1, p1, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/a;->d(Landroid/support/constraint/solver/a;)Landroid/support/constraint/solver/a;

    .line 217
    return-void
.end method

.method public f()Landroid/support/constraint/solver/g;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-virtual {v0}, Landroid/support/constraint/solver/a;->b()Landroid/support/constraint/solver/a;

    .line 158
    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-virtual {v0}, Landroid/support/constraint/solver/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "+"

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/support/constraint/solver/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 227
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-virtual {v0}, Landroid/support/constraint/solver/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-virtual {v0}, Landroid/support/constraint/solver/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/g;->a:Landroid/support/constraint/solver/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/solver/g;->b:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
