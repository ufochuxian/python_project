.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SearchView$a;,
        Landroid/support/v7/widget/SearchView$SearchAutoComplete;,
        Landroid/support/v7/widget/SearchView$f;,
        Landroid/support/v7/widget/SearchView$e;,
        Landroid/support/v7/widget/SearchView$d;,
        Landroid/support/v7/widget/SearchView$b;,
        Landroid/support/v7/widget/SearchView$c;
    }
.end annotation


# static fields
.field static final a:Z = false

.field static final b:Ljava/lang/String; = "SearchView"

.field static final q:Landroid/support/v7/widget/SearchView$a;

.field private static final s:Ljava/lang/String; = "nm"


# instance fields
.field private A:[I

.field private B:[I

.field private final C:Landroid/widget/ImageView;

.field private final D:Landroid/graphics/drawable/Drawable;

.field private final E:I

.field private final F:I

.field private final G:Landroid/content/Intent;

.field private final H:Landroid/content/Intent;

.field private final I:Ljava/lang/CharSequence;

.field private J:Landroid/support/v7/widget/SearchView$c;

.field private K:Landroid/support/v7/widget/SearchView$b;

.field private L:Landroid/support/v7/widget/SearchView$d;

.field private M:Landroid/view/View$OnClickListener;

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Ljava/lang/CharSequence;

.field private R:Z

.field private S:Z

.field private T:I

.field private U:Z

.field private V:Ljava/lang/CharSequence;

.field private W:Ljava/lang/CharSequence;

.field private aa:Z

.field private ab:I

.field private ac:Landroid/os/Bundle;

.field private ad:Ljava/lang/Runnable;

.field private final ae:Ljava/lang/Runnable;

.field private af:Ljava/lang/Runnable;

.field private final ag:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final ah:Landroid/view/View$OnClickListener;

.field private final ai:Landroid/widget/TextView$OnEditorActionListener;

.field private final aj:Landroid/widget/AdapterView$OnItemClickListener;

.field private final ak:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private al:Landroid/text/TextWatcher;

.field final c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field final d:Landroid/widget/ImageView;

.field final k:Landroid/widget/ImageView;

.field final l:Landroid/widget/ImageView;

.field final m:Landroid/widget/ImageView;

.field n:Landroid/view/View$OnFocusChangeListener;

.field o:Landroid/support/v4/widget/f;

.field p:Landroid/app/SearchableInfo;

.field r:Landroid/view/View$OnKeyListener;

.field private final t:Landroid/view/View;

.field private final u:Landroid/view/View;

.field private final v:Landroid/view/View;

.field private final w:Landroid/view/View;

.field private x:Landroid/support/v7/widget/SearchView$f;

.field private y:Landroid/graphics/Rect;

.field private z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Landroid/support/v7/widget/SearchView$a;

    invoke-direct {v0}, Landroid/support/v7/widget/SearchView$a;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 292
    sget v0, Landroid/support/v7/a/b$b;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->y:Landroid/graphics/Rect;

    .line 138
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/graphics/Rect;

    .line 139
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->A:[I

    .line 140
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->B:[I

    .line 187
    new-instance v7, Landroid/support/v7/widget/SearchView$1;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$1;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->ad:Ljava/lang/Runnable;

    .line 199
    new-instance v7, Landroid/support/v7/widget/SearchView$5;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$5;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->ae:Ljava/lang/Runnable;

    .line 206
    new-instance v7, Landroid/support/v7/widget/SearchView$6;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$6;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->af:Ljava/lang/Runnable;

    .line 217
    new-instance v7, Ljava/util/WeakHashMap;

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->ag:Ljava/util/WeakHashMap;

    .line 1027
    new-instance v7, Landroid/support/v7/widget/SearchView$10;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$10;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->ah:Landroid/view/View$OnClickListener;

    .line 1049
    new-instance v7, Landroid/support/v7/widget/SearchView$11;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$11;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/view/View$OnKeyListener;

    .line 1212
    new-instance v7, Landroid/support/v7/widget/SearchView$12;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$12;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->ai:Landroid/widget/TextView$OnEditorActionListener;

    .line 1454
    new-instance v7, Landroid/support/v7/widget/SearchView$2;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$2;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->aj:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1466
    new-instance v7, Landroid/support/v7/widget/SearchView$3;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$3;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->ak:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1756
    new-instance v7, Landroid/support/v7/widget/SearchView$4;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$4;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->al:Landroid/text/TextWatcher;

    .line 298
    sget-object v7, Landroid/support/v7/a/b$l;->SearchView:[I

    const/4 v8, 0x0

    invoke-static {p1, p2, v7, p3, v8}, Landroid/support/v7/widget/at;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/at;

    move-result-object v0

    .line 301
    .local v0, "a":Landroid/support/v7/widget/at;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 302
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v7, Landroid/support/v7/a/b$l;->SearchView_layout:I

    sget v8, Landroid/support/v7/a/b$i;->abc_search_view:I

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/at;->g(II)I

    move-result v5

    .line 304
    .local v5, "layoutResId":I
    const/4 v7, 0x1

    invoke-virtual {v3, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 306
    sget v7, Landroid/support/v7/a/b$g;->search_src_text:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 307
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V

    .line 309
    sget v7, Landroid/support/v7/a/b$g;->search_edit_frame:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/view/View;

    .line 310
    sget v7, Landroid/support/v7/a/b$g;->search_plate:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/view/View;

    .line 311
    sget v7, Landroid/support/v7/a/b$g;->submit_area:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/view/View;

    .line 312
    sget v7, Landroid/support/v7/a/b$g;->search_button:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    .line 313
    sget v7, Landroid/support/v7/a/b$g;->search_go_btn:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    .line 314
    sget v7, Landroid/support/v7/a/b$g;->search_close_btn:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    .line 315
    sget v7, Landroid/support/v7/a/b$g;->search_voice_btn:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/widget/ImageView;

    .line 316
    sget v7, Landroid/support/v7/a/b$g;->search_mag_icon:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->C:Landroid/widget/ImageView;

    .line 319
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/view/View;

    sget v8, Landroid/support/v7/a/b$l;->SearchView_queryBackground:I

    .line 320
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 319
    invoke-static {v7, v8}, Landroid/support/v4/view/ap;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/view/View;

    sget v8, Landroid/support/v7/a/b$l;->SearchView_submitBackground:I

    .line 322
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 321
    invoke-static {v7, v8}, Landroid/support/v4/view/ap;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    sget v8, Landroid/support/v7/a/b$l;->SearchView_searchIcon:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    sget v8, Landroid/support/v7/a/b$l;->SearchView_goIcon:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    sget v8, Landroid/support/v7/a/b$l;->SearchView_closeIcon:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/widget/ImageView;

    sget v8, Landroid/support/v7/a/b$l;->SearchView_voiceIcon:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->C:Landroid/widget/ImageView;

    sget v8, Landroid/support/v7/a/b$l;->SearchView_searchIcon:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    sget v7, Landroid/support/v7/a/b$l;->SearchView_searchHintIcon:I

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/graphics/drawable/Drawable;

    .line 332
    sget v7, Landroid/support/v7/a/b$l;->SearchView_suggestionRowLayout:I

    sget v8, Landroid/support/v7/a/b$i;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/at;->g(II)I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/SearchView;->E:I

    .line 334
    sget v7, Landroid/support/v7/a/b$l;->SearchView_commitIcon:I

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/at;->g(II)I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/SearchView;->F:I

    .line 336
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->ah:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->ah:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->ah:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->ah:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->ah:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->al:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 343
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->ai:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 344
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->aj:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 345
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->ak:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 346
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 349
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance v8, Landroid/support/v7/widget/SearchView$7;

    invoke-direct {v8, p0}, Landroid/support/v7/widget/SearchView$7;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 357
    sget v7, Landroid/support/v7/a/b$l;->SearchView_iconifiedByDefault:I

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/at;->a(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 359
    sget v7, Landroid/support/v7/a/b$l;->SearchView_android_maxWidth:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/at;->e(II)I

    move-result v6

    .line 360
    .local v6, "maxWidth":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 361
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    .line 364
    :cond_0
    sget v7, Landroid/support/v7/a/b$l;->SearchView_defaultQueryHint:I

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/at;->d(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->I:Ljava/lang/CharSequence;

    .line 365
    sget v7, Landroid/support/v7/a/b$l;->SearchView_queryHint:I

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/at;->d(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->Q:Ljava/lang/CharSequence;

    .line 367
    sget v7, Landroid/support/v7/a/b$l;->SearchView_android_imeOptions:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/at;->a(II)I

    move-result v2

    .line 368
    .local v2, "imeOptions":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 369
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    .line 372
    :cond_1
    sget v7, Landroid/support/v7/a/b$l;->SearchView_android_inputType:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/at;->a(II)I

    move-result v4

    .line 373
    .local v4, "inputType":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 374
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    .line 377
    :cond_2
    const/4 v1, 0x1

    .line 378
    .local v1, "focusable":Z
    sget v7, Landroid/support/v7/a/b$l;->SearchView_android_focusable:I

    invoke-virtual {v0, v7, v1}, Landroid/support/v7/widget/at;->a(IZ)Z

    move-result v1

    .line 379
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 381
    invoke-virtual {v0}, Landroid/support/v7/widget/at;->e()V

    .line 384
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->G:Landroid/content/Intent;

    .line 385
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->G:Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 386
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->G:Landroid/content/Intent;

    const-string v8, "android.speech.extra.LANGUAGE_MODEL"

    const-string v9, "web_search"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/content/Intent;

    .line 390
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/view/View;

    .line 393
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 394
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_4

    .line 395
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->r()V

    .line 401
    :cond_3
    :goto_0
    iget-boolean v7, p0, Landroid/support/v7/widget/SearchView;->N:Z

    invoke-direct {p0, v7}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 402
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->y()V

    .line 403
    return-void

    .line 397
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->s()V

    goto :goto_0
.end method

.method private A()V
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1254
    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1614
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1615
    .local v1, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1616
    .local v0, "searchActivity":Landroid/content/ComponentName;
    const-string v3, "calling_package"

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    return-object v1

    .line 1617
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1703
    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/support/v7/widget/an;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1705
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1706
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1708
    :cond_0
    if-nez v1, :cond_1

    .line 1709
    const-string v1, "android.intent.action.SEARCH"

    .line 1713
    :cond_1
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/support/v7/widget/an;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1714
    .local v7, "data":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1715
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    .line 1718
    :cond_2
    if-eqz v7, :cond_3

    .line 1719
    const-string v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Landroid/support/v7/widget/an;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1720
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1724
    .end local v10    # "id":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 1726
    .local v2, "dataUri":Landroid/net/Uri;
    :goto_0
    const-string v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/support/v7/widget/an;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1727
    .local v4, "query":Ljava/lang/String;
    const-string v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/support/v7/widget/an;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extraData":Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1729
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1739
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "dataUri":Landroid/net/Uri;
    .end local v3    # "extraData":Ljava/lang/String;
    .end local v4    # "query":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1724
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v7    # "data":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1730
    .end local v1    # "action":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1733
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 1737
    .local v11, "rowNum":I
    :goto_2
    const-string v0, "SearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1739
    const/4 v0, 0x0

    goto :goto_1

    .line 1734
    .end local v11    # "rowNum":I
    :catch_1
    move-exception v9

    .line 1735
    .local v9, "e2":Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11    # "rowNum":I
    goto :goto_2
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1584
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1585
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1589
    if-eqz p2, :cond_0

    .line 1590
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1592
    :cond_0
    const-string v1, "user_query"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->W:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1593
    if-eqz p4, :cond_1

    .line 1594
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    :cond_1
    if-eqz p3, :cond_2

    .line 1597
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ac:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1600
    const-string v1, "app_data"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->ac:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1602
    :cond_3
    if-eqz p5, :cond_4

    .line 1603
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1604
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1607
    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1541
    if-nez p1, :cond_0

    .line 1551
    :goto_0
    return-void

    .line 1547
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 888
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->A:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 889
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->B:[I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SearchView;->getLocationInWindow([I)V

    .line 890
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->A:[I

    aget v2, v2, v5

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->B:[I

    aget v3, v3, v5

    sub-int v1, v2, v3

    .line 891
    .local v1, "top":I
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->A:[I

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->B:[I

    aget v3, v3, v4

    sub-int v0, v2, v3

    .line 892
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 893
    return-void
.end method

.method private a(Z)V
    .locals 7
    .param p1, "collapsed"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 906
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->O:Z

    .line 908
    if-eqz p1, :cond_1

    move v2, v3

    .line 910
    .local v2, "visCollapsed":I
    :goto_0
    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move v0, v5

    .line 912
    .local v0, "hasText":Z
    :goto_1
    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->d:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 913
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 914
    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 917
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->C:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/support/v7/widget/SearchView;->N:Z

    if-eqz v4, :cond_4

    .line 918
    :cond_0
    const/16 v1, 0x8

    .line 922
    .local v1, "iconVisibility":I
    :goto_3
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->C:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->w()V

    .line 925
    if-nez v0, :cond_5

    :goto_4
    invoke-direct {p0, v5}, Landroid/support/v7/widget/SearchView;->c(Z)V

    .line 926
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->v()V

    .line 927
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "iconVisibility":I
    .end local v2    # "visCollapsed":I
    :cond_1
    move v2, v4

    .line 908
    goto :goto_0

    .restart local v2    # "visCollapsed":I
    :cond_2
    move v0, v3

    .line 910
    goto :goto_1

    .restart local v0    # "hasText":Z
    :cond_3
    move v4, v3

    .line 914
    goto :goto_2

    .line 920
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "iconVisibility":I
    goto :goto_3

    :cond_5
    move v5, v3

    .line 925
    goto :goto_4
.end method

.method static a(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1749
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1629
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 1634
    .local v8, "searchActivity":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1635
    .local v6, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1636
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1643
    .local v3, "pending":Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1644
    .local v5, "queryExtras":Landroid/os/Bundle;
    iget-object v10, p0, Landroid/support/v7/widget/SearchView;->ac:Landroid/os/Bundle;

    if-eqz v10, :cond_0

    .line 1645
    const-string v10, "app_data"

    iget-object v11, p0, Landroid/support/v7/widget/SearchView;->ac:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1651
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1654
    .local v9, "voiceIntent":Landroid/content/Intent;
    const-string v1, "free_form"

    .line 1655
    .local v1, "languageModel":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1656
    .local v4, "prompt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1657
    .local v0, "language":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1659
    .local v2, "maxResults":I
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1660
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1661
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1663
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1664
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1666
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1667
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1669
    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_4

    .line 1670
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 1673
    :cond_4
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1674
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1675
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1676
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1677
    const-string v11, "calling_package"

    if-nez v8, :cond_5

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1681
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1682
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1684
    return-object v9

    .line 1678
    :cond_5
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .prologue
    .line 951
    const/16 v0, 0x8

    .line 952
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->P:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->U:Z

    if-nez v1, :cond_1

    .line 954
    :cond_0
    const/4 v0, 0x0

    .line 956
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 957
    return-void
.end method

.method private b(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1524
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    invoke-virtual {v2}, Landroid/support/v4/widget/f;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1525
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1527
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/SearchView;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1530
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->a(Landroid/content/Intent;)V

    .line 1532
    const/4 v2, 0x1

    .line 1534
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 1139
    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->N:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    :cond_0
    move-object v0, p1

    .line 1149
    :goto_0
    return-object v0

    .line 1143
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 1144
    .local v1, "textSize":I
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1146
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "   "

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1147
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1148
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private c(Z)V
    .locals 3
    .param p1, "empty"    # Z

    .prologue
    .line 1204
    const/16 v0, 0x8

    .line 1205
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->U:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1206
    const/4 v0, 0x0

    .line 1207
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1209
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1210
    return-void
.end method

.method private e(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1491
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1492
    .local v2, "oldQuery":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    invoke-virtual {v3}, Landroid/support/v4/widget/f;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1493
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1511
    :goto_0
    return-void

    .line 1496
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1498
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    invoke-virtual {v3, v0}, Landroid/support/v4/widget/f;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1499
    .local v1, "newQuery":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 1502
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1505
    :cond_1
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1509
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 901
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/b$e;->abc_search_view_preferred_height:I

    .line 902
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 896
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/b$e;->abc_search_view_preferred_width:I

    .line 897
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private r()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/SearchView$8;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$8;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 414
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/SearchView$9;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$9;-><init>(Landroid/support/v7/widget/SearchView;)V

    .line 418
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 424
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 1557
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1560
    return-void

    .line 1559
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private t()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 930
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 931
    const/4 v1, 0x0

    .line 932
    .local v1, "testIntent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 933
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->G:Landroid/content/Intent;

    .line 937
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 938
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 940
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 943
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_1
    return v2

    .line 934
    .restart local v1    # "testIntent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 935
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/content/Intent;

    goto :goto_0
.end method

.method private u()Z
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->P:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->U:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 960
    const/16 v0, 0x8

    .line 961
    .local v0, "visibility":I
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->k:Landroid/widget/ImageView;

    .line 962
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->m:Landroid/widget/ImageView;

    .line 963
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 964
    :cond_0
    const/4 v0, 0x0

    .line 966
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 967
    return-void
.end method

.method private w()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 970
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 973
    .local v1, "hasText":Z
    :goto_0
    if-nez v1, :cond_0

    iget-boolean v4, p0, Landroid/support/v7/widget/SearchView;->N:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/support/v7/widget/SearchView;->aa:Z

    if-nez v4, :cond_3

    .line 974
    .local v2, "showClose":Z
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 975
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->l:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 976
    .local v0, "closeButtonImg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 977
    if-eqz v1, :cond_5

    sget-object v3, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 979
    :cond_1
    return-void

    .end local v0    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasText":Z
    .end local v2    # "showClose":Z
    :cond_2
    move v1, v3

    .line 970
    goto :goto_0

    .restart local v1    # "hasText":Z
    :cond_3
    move v2, v3

    .line 973
    goto :goto_1

    .line 974
    .restart local v2    # "showClose":Z
    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    .line 977
    .restart local v0    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    :cond_5
    sget-object v3, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private x()V
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ae:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 983
    return-void
.end method

.method private y()V
    .locals 3

    .prologue
    .line 1153
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1154
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1155
    return-void
.end method

.method private z()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1161
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1162
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1163
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1166
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    .line 1169
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1170
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1171
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1178
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1181
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1182
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    if-eqz v1, :cond_1

    .line 1183
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/f;->changeCursor(Landroid/database/Cursor;)V

    .line 1187
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1188
    new-instance v1, Landroid/support/v7/widget/an;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->ag:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Landroid/support/v7/widget/an;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    .line 1190
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1191
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    check-cast v1, Landroid/support/v7/widget/an;

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->R:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/an;->c(I)V

    .line 1195
    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1342
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->aa:Z

    if-eqz v0, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1344
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->aa:Z

    .line 1345
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->ab:I

    .line 1346
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->ab:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1347
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1563
    const-string v1, "android.intent.action.SEARCH"

    .local v1, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1564
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1565
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1566
    return-void
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1025
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 608
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 609
    if-eqz p1, :cond_0

    .line 610
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 611
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->W:Ljava/lang/CharSequence;

    .line 615
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->h()V

    .line 618
    :cond_1
    return-void
.end method

.method a(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1446
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$d;

    .line 1447
    invoke-interface {v0, p1}, Landroid/support/v7/widget/SearchView$d;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1448
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->e(I)V

    .line 1449
    const/4 v0, 0x1

    .line 1451
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(IILjava/lang/String;)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1435
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$d;

    .line 1436
    invoke-interface {v1, p1}, Landroid/support/v7/widget/SearchView$d;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1437
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/SearchView;->b(IILjava/lang/String;)Z

    .line 1438
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1439
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->A()V

    .line 1440
    const/4 v0, 0x1

    .line 1442
    :cond_1
    return v0
.end method

.method a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x15

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1094
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    if-nez v4, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return v2

    .line 1097
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    if-eqz v4, :cond_0

    .line 1100
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/support/v4/view/k;->a(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1103
    const/16 v4, 0x42

    if-eq p2, v4, :cond_2

    const/16 v4, 0x54

    if-eq p2, v4, :cond_2

    const/16 v4, 0x3d

    if-ne p2, v4, :cond_3

    .line 1105
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    .line 1106
    .local v0, "position":I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/SearchView;->a(IILjava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 1111
    .end local v0    # "position":I
    :cond_3
    if-eq p2, v5, :cond_4

    const/16 v4, 0x16

    if-ne p2, v4, :cond_6

    .line 1116
    :cond_4
    if-ne p2, v5, :cond_5

    move v1, v2

    .line 1118
    .local v1, "selPoint":I
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1119
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1120
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1121
    sget-object v2, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$a;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v4, v3}, Landroid/support/v7/widget/SearchView$a;->a(Landroid/widget/AutoCompleteTextView;Z)V

    move v2, v3

    .line 1123
    goto :goto_0

    .line 1116
    .end local v1    # "selPoint":I
    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 1117
    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    goto :goto_1

    .line 1127
    :cond_6
    const/16 v3, 0x13

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1330
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    .line 1331
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1333
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->ab:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1334
    iput-boolean v2, p0, Landroid/support/v7/widget/SearchView;->aa:Z

    .line 1335
    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1225
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1226
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->W:Ljava/lang/CharSequence;

    .line 1227
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1228
    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->b(Z)V

    .line 1229
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->c(Z)V

    .line 1230
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->w()V

    .line 1231
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->v()V

    .line 1232
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->J:Landroid/support/v7/widget/SearchView$c;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->V:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->J:Landroid/support/v7/widget/SearchView$c;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v7/widget/SearchView$c;->b(Ljava/lang/String;)Z

    .line 1235
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SearchView;->V:Ljava/lang/CharSequence;

    .line 1236
    return-void

    .end local v0    # "hasText":Z
    :cond_1
    move v0, v3

    .line 1227
    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_2
    move v2, v3

    .line 1229
    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->N:Z

    return v0
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->S:Z

    .line 535
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 536
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->clearFocus()V

    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 538
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->S:Z

    .line 539
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->O:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->P:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->R:Z

    return v0
.end method

.method g()V
    .locals 5

    .prologue
    .line 986
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 987
    .local v0, "focused":Z
    if-eqz v0, :cond_2

    sget-object v2, Landroid/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    .line 988
    .local v2, "stateSet":[I
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 989
    .local v1, "searchPlateBg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 990
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 992
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 993
    .local v3, "submitAreaBg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 994
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 996
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->invalidate()V

    .line 997
    return-void

    .line 987
    .end local v1    # "searchPlateBg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "stateSet":[I
    .end local v3    # "submitAreaBg":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v2, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Landroid/support/v7/widget/SearchView;->T:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 656
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->Q:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 657
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->Q:Ljava/lang/CharSequence;

    .line 663
    .local v0, "hint":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 658
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_0

    .line 661
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->I:Ljava/lang/CharSequence;

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Landroid/support/v7/widget/SearchView;->F:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Landroid/support/v7/widget/SearchView;->E:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/f;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    return-object v0
.end method

.method h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1239
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1240
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1241
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->J:Landroid/support/v7/widget/SearchView$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->J:Landroid/support/v7/widget/SearchView$c;

    .line 1242
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/SearchView$c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1243
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1244
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v1, v2}, Landroid/support/v7/widget/SearchView;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1246
    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1247
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->A()V

    .line 1250
    :cond_2
    return-void
.end method

.method i()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1257
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1258
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1259
    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->N:Z

    if-eqz v1, :cond_1

    .line 1261
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/support/v7/widget/SearchView$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/support/v7/widget/SearchView$b;

    invoke-interface {v1}, Landroid/support/v7/widget/SearchView$b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1263
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1265
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1274
    :cond_1
    :goto_0
    return-void

    .line 1269
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1271
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method m()V
    .locals 1

    .prologue
    .line 1277
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1278
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1280
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1283
    :cond_0
    return-void
.end method

.method n()V
    .locals 6

    .prologue
    .line 1287
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    if-nez v4, :cond_1

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    .line 1292
    .local v2, "searchable":Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1293
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->G:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/support/v7/widget/SearchView;->a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1295
    .local v3, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1301
    .end local v3    # "webSearchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1304
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchView"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1296
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1297
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/support/v7/widget/SearchView;->b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1299
    .local v0, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method o()V
    .locals 1

    .prologue
    .line 1309
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1312
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->x()V

    .line 1313
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->q()V

    .line 1316
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->ae:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1002
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->af:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1003
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 1004
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 869
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 871
    if-eqz p1, :cond_0

    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->y:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SearchView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 875
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->y:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->y:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 877
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Landroid/support/v7/widget/SearchView$f;

    if-nez v0, :cond_1

    .line 878
    new-instance v0, Landroid/support/v7/widget/SearchView$f;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->y:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/SearchView$f;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Landroid/support/v7/widget/SearchView$f;

    .line 880
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Landroid/support/v7/widget/SearchView$f;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Landroid/support/v7/widget/SearchView$f;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/SearchView$f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 821
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 865
    :goto_0
    return-void

    .line 825
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 826
    .local v3, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 828
    .local v2, "width":I
    sparse-switch v3, :sswitch_data_0

    .line 848
    :cond_1
    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    .line 850
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 851
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 853
    .local v0, "height":I
    sparse-switch v1, :sswitch_data_1

    .line 861
    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    .line 863
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 864
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 863
    invoke-super {p0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_0

    .line 831
    .end local v0    # "height":I
    .end local v1    # "heightMode":I
    :sswitch_0
    iget v4, p0, Landroid/support/v7/widget/SearchView;->T:I

    if-lez v4, :cond_2

    .line 832
    iget v4, p0, Landroid/support/v7/widget/SearchView;->T:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 834
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 836
    goto :goto_1

    .line 839
    :sswitch_1
    iget v4, p0, Landroid/support/v7/widget/SearchView;->T:I

    if-lez v4, :cond_1

    .line 840
    iget v4, p0, Landroid/support/v7/widget/SearchView;->T:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 845
    :sswitch_2
    iget v4, p0, Landroid/support/v7/widget/SearchView;->T:I

    if-lez v4, :cond_3

    iget v2, p0, Landroid/support/v7/widget/SearchView;->T:I

    :goto_3
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v2

    goto :goto_3

    .line 855
    .restart local v0    # "height":I
    .restart local v1    # "heightMode":I
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 856
    goto :goto_2

    .line 858
    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v0

    goto :goto_2

    .line 828
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 853
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1400
    instance-of v1, p1, Landroid/support/v7/widget/SearchView$e;

    if-nez v1, :cond_0

    .line 1401
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1408
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1404
    check-cast v0, Landroid/support/v7/widget/SearchView$e;

    .line 1405
    .local v0, "ss":Landroid/support/v7/widget/SearchView$e;
    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$e;->a()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1406
    iget-boolean v1, v0, Landroid/support/v7/widget/SearchView$e;->b:Z

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 1407
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1392
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1393
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v7/widget/SearchView$e;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SearchView$e;-><init>(Landroid/os/Parcelable;)V

    .line 1394
    .local v0, "ss":Landroid/support/v7/widget/SearchView$e;
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/SearchView$e;->b:Z

    .line 1395
    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1320
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1322
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->x()V

    .line 1323
    return-void
.end method

.method p()V
    .locals 9

    .prologue
    .line 1411
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 1412
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1413
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1414
    .local v0, "anchorPadding":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1415
    .local v1, "dropDownPadding":Landroid/graphics/Rect;
    invoke-static {p0}, Landroid/support/v7/widget/ay;->a(Landroid/view/View;)Z

    move-result v3

    .line 1416
    .local v3, "isLayoutRtl":Z
    iget-boolean v7, p0, Landroid/support/v7/widget/SearchView;->N:Z

    if-eqz v7, :cond_1

    sget v7, Landroid/support/v7/a/b$e;->abc_dropdownitem_icon_width:I

    .line 1417
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Landroid/support/v7/a/b$e;->abc_dropdownitem_text_padding_left:I

    .line 1418
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1420
    .local v2, "iconOffset":I
    :goto_0
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1422
    if-eqz v3, :cond_2

    .line 1423
    iget v7, v1, Landroid/graphics/Rect;->left:I

    neg-int v4, v7

    .line 1427
    .local v4, "offset":I
    :goto_1
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1428
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    sub-int v6, v7, v0

    .line 1430
    .local v6, "width":I
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1432
    .end local v0    # "anchorPadding":I
    .end local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v2    # "iconOffset":I
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "offset":I
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "width":I
    :cond_0
    return-void

    .line 1418
    .restart local v0    # "anchorPadding":I
    .restart local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .restart local v3    # "isLayoutRtl":Z
    .restart local v5    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1425
    .restart local v2    # "iconOffset":I
    :cond_2
    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    sub-int v4, v0, v7

    .restart local v4    # "offset":I
    goto :goto_1
.end method

.method q()V
    .locals 2

    .prologue
    .line 1744
    sget-object v0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$a;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$a;->a(Landroid/widget/AutoCompleteTextView;)V

    .line 1745
    sget-object v0, Landroid/support/v7/widget/SearchView;->q:Landroid/support/v7/widget/SearchView$a;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$a;->b(Landroid/widget/AutoCompleteTextView;)V

    .line 1746
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 517
    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->S:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 528
    :cond_0
    :goto_0
    return v0

    .line 519
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 521
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 522
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 523
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 524
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->a(Z)V

    goto :goto_0

    .line 528
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appSearchData"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/RestrictTo;
        a = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 466
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->ac:Landroid/os/Bundle;

    .line 467
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .prologue
    .line 706
    if-eqz p1, :cond_0

    .line 707
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->i()V

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->m()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .prologue
    .line 679
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->N:Z

    if-ne v0, p1, :cond_0

    .line 683
    :goto_0
    return-void

    .line 680
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->N:Z

    .line 681
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 682
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->y()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 478
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 479
    return-void
.end method

.method setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1007
    if-eqz p1, :cond_1

    .line 1008
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ad:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->ad:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1012
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1014
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 501
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 502
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    .line 801
    iput p1, p0, Landroid/support/v7/widget/SearchView;->T:I

    .line 803
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    .line 804
    return-void
.end method

.method public setOnCloseListener(Landroid/support/v7/widget/SearchView$b;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/SearchView$b;

    .prologue
    .line 557
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/support/v7/widget/SearchView$b;

    .line 558
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 566
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->n:Landroid/view/View$OnFocusChangeListener;

    .line 567
    return-void
.end method

.method public setOnQueryTextListener(Landroid/support/v7/widget/SearchView$c;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/SearchView$c;

    .prologue
    .line 548
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->J:Landroid/support/v7/widget/SearchView$c;

    .line 549
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 587
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/view/View$OnClickListener;

    .line 588
    return-void
.end method

.method public setOnSuggestionListener(Landroid/support/v7/widget/SearchView$d;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/SearchView$d;

    .prologue
    .line 575
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$d;

    .line 576
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 631
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->Q:Ljava/lang/CharSequence;

    .line 632
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->y()V

    .line 633
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 760
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->R:Z

    .line 761
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    instance-of v0, v0, Landroid/support/v7/widget/an;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    check-cast v0, Landroid/support/v7/widget/an;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/an;->c(I)V

    .line 765
    :cond_0
    return-void

    .line 762
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 443
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    .line 444
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->z()V

    .line 446
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->y()V

    .line 449
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->t()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->U:Z

    .line 451
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->U:Z

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 456
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 457
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 732
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->P:Z

    .line 733
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 734
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/f;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v4/widget/f;

    .prologue
    .line 782
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    .line 784
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->c:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->o:Landroid/support/v4/widget/f;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 785
    return-void
.end method
