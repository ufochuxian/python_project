.class public Landroid/support/v4/widget/ag;
.super Landroid/support/v4/widget/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ag$a;,
        Landroid/support/v4/widget/ag$b;
    }
.end annotation


# instance fields
.field protected a:[I
    .annotation build Landroid/support/annotation/RestrictTo;
        a = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected b:[I
    .annotation build Landroid/support/annotation/RestrictTo;
        a = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field c:[Ljava/lang/String;

.field private d:I

.field private e:Landroid/support/v4/widget/ag$a;

.field private f:Landroid/support/v4/widget/ag$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ab;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ag;->d:I

    .line 69
    iput-object p5, p0, Landroid/support/v4/widget/ag;->b:[I

    .line 70
    iput-object p4, p0, Landroid/support/v4/widget/ag;->c:[Ljava/lang/String;

    .line 71
    invoke-direct {p0, p3, p4}, Landroid/support/v4/widget/ag;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "flags"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/support/v4/widget/ab;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/ag;->d:I

    .line 95
    iput-object p5, p0, Landroid/support/v4/widget/ag;->b:[I

    .line 96
    iput-object p4, p0, Landroid/support/v4/widget/ag;->c:[Ljava/lang/String;

    .line 97
    invoke-direct {p0, p3, p4}, Landroid/support/v4/widget/ag;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private a(Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "from"    # [Ljava/lang/String;

    .prologue
    .line 315
    if-eqz p1, :cond_2

    .line 317
    array-length v0, p2

    .line 318
    .local v0, "count":I
    iget-object v2, p0, Landroid/support/v4/widget/ag;->a:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/widget/ag;->a:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 319
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/support/v4/widget/ag;->a:[I

    .line 321
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 322
    iget-object v2, p0, Landroid/support/v4/widget/ag;->a:[I

    aget-object v3, p2, v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/widget/ag;->a:[I

    .line 327
    :cond_3
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/widget/ag$b;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v4/widget/ag;->f:Landroid/support/v4/widget/ag$b;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "from"    # [Ljava/lang/String;
    .param p3, "to"    # [I

    .prologue
    .line 350
    iput-object p2, p0, Landroid/support/v4/widget/ag;->c:[Ljava/lang/String;

    .line 351
    iput-object p3, p0, Landroid/support/v4/widget/ag;->b:[I

    .line 355
    iget-object v0, p0, Landroid/support/v4/widget/ag;->c:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/ag;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 356
    invoke-super {p0, p1}, Landroid/support/v4/widget/ab;->changeCursor(Landroid/database/Cursor;)V

    .line 357
    return-void
.end method

.method public a(Landroid/support/v4/widget/ag$a;)V
    .locals 0
    .param p1, "cursorToStringConverter"    # Landroid/support/v4/widget/ag$a;

    .prologue
    .line 282
    iput-object p1, p0, Landroid/support/v4/widget/ag;->e:Landroid/support/v4/widget/ag$a;

    .line 283
    return-void
.end method

.method public a(Landroid/support/v4/widget/ag$b;)V
    .locals 0
    .param p1, "viewBinder"    # Landroid/support/v4/widget/ag$b;

    .prologue
    .line 179
    iput-object p1, p0, Landroid/support/v4/widget/ag;->f:Landroid/support/v4/widget/ag$b;

    .line 180
    return-void
.end method

.method public a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 199
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Landroid/support/v4/widget/ag;->d:I

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v4/widget/ag;->f:Landroid/support/v4/widget/ag$b;

    .line 126
    .local v0, "binder":Landroid/support/v4/widget/ag$b;
    iget-object v8, p0, Landroid/support/v4/widget/ag;->b:[I

    array-length v2, v8

    .line 127
    .local v2, "count":I
    iget-object v3, p0, Landroid/support/v4/widget/ag;->a:[I

    .line 128
    .local v3, "from":[I
    iget-object v6, p0, Landroid/support/v4/widget/ag;->b:[I

    .line 130
    .local v6, "to":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_5

    .line 131
    aget v8, v6, v4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 132
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_2

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "bound":Z
    if-eqz v0, :cond_0

    .line 135
    aget v8, v3, v4

    invoke-interface {v0, v7, p3, v8}, Landroid/support/v4/widget/ag$b;->a(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    .line 138
    :cond_0
    if-nez v1, :cond_2

    .line 139
    aget v8, v3, v4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "text":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 141
    const-string v5, ""

    .line 144
    :cond_1
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 145
    check-cast v7, Landroid/widget/TextView;

    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {p0, v7, v5}, Landroid/support/v4/widget/ag;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 130
    .end local v1    # "bound":Z
    .end local v5    # "text":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    .restart local v1    # "bound":Z
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v7    # "v":Landroid/view/View;
    :cond_3
    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 147
    check-cast v7, Landroid/widget/ImageView;

    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {p0, v7, v5}, Landroid/support/v4/widget/ag;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .restart local v7    # "v":Landroid/view/View;
    :cond_4
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 155
    .end local v1    # "bound":Z
    .end local v5    # "text":Ljava/lang/String;
    .end local v7    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method public c()Landroid/support/v4/widget/ag$a;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/widget/ag;->e:Landroid/support/v4/widget/ag$a;

    return-object v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "stringConversionColumn"    # I

    .prologue
    .line 250
    iput p1, p0, Landroid/support/v4/widget/ag;->d:I

    .line 251
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 298
    iget-object v0, p0, Landroid/support/v4/widget/ag;->e:Landroid/support/v4/widget/ag$a;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Landroid/support/v4/widget/ag;->e:Landroid/support/v4/widget/ag$a;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/ag$a;->a(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    .line 300
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/ag;->d:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 301
    iget v0, p0, Landroid/support/v4/widget/ag;->d:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/widget/ab;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/ag;->c:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/ag;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 335
    invoke-super {p0, p1}, Landroid/support/v4/widget/ab;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
