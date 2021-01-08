.class final Lcom/google/android/gms/internal/ws;
.super Ljava/lang/Object;


# instance fields
.field private zzchW:Ljava/lang/StringBuilder;

.field private zzchX:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/gms/internal/wj;",
            ">;"
        }
    .end annotation
.end field

.field private zzchY:I

.field private zzchZ:I

.field private zzcia:Z

.field private final zzcib:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/qo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcic:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcid:Lcom/google/android/gms/internal/wu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/wu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchX:Ljava/util/Stack;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ws;->zzchY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ws;->zzcia:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ws;->zzcib:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ws;->zzcic:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ws;->zzcid:Lcom/google/android/gms/internal/wu;

    return-void
.end method

.method private final zzIS()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzIV()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ws;->zzIS()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ws;->zzchZ:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ws;->zzbY(I)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qo;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ws;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/wj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    const-string v2, ":("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ws;->zzcia:Z

    :cond_1
    return-void
.end method

.method private final zzIW()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ws;->zzchZ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ws;->zzchZ:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ws;->zzIS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ws;->zzcia:Z

    return-void
.end method

.method private final zzIX()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ws;->zzchZ:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Can\'t finish hashing in the middle processing a child"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/yu;->zzb(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ws;->zzIS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ws;->zzIY()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzcic:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final zzIY()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ws;->zzIS()Z

    move-result v0

    const-string v1, "Can\'t end range without starting a range!"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/yu;->zzb(ZLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ws;->zzchZ:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ws;->zzchY:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ws;->zzbY(I)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/yu;->zzgY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ws;->zzcic:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ws;->zzcib:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ws;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ws;->zzIX()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ws;Lcom/google/android/gms/internal/wj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ws;->zzn(Lcom/google/android/gms/internal/wj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ws;Lcom/google/android/gms/internal/xb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ws;->zzb(Lcom/google/android/gms/internal/xb;)V

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/wj;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wj;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/yu;->zzgZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ws;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzcib:Ljava/util/List;

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/xb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/xb",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ws;->zzIV()V

    iget v0, p0, Lcom/google/android/gms/internal/ws;->zzchZ:I

    iput v0, p0, Lcom/google/android/gms/internal/ws;->zzchY:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/gms/internal/xh;->zzciv:Lcom/google/android/gms/internal/xh;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/xb;->zza(Lcom/google/android/gms/internal/xh;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ws;->zzcia:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzcid:Lcom/google/android/gms/internal/wu;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/wu;->zze(Lcom/google/android/gms/internal/ws;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ws;->zzIY()V

    :cond_0
    return-void
.end method

.method private final zzbY(I)Lcom/google/android/gms/internal/qo;
    .locals 3

    new-array v2, p1, [Lcom/google/android/gms/internal/wj;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchX:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wj;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/qo;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/qo;-><init>([Lcom/google/android/gms/internal/wj;)V

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ws;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzcic:Ljava/util/List;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ws;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ws;->zzIW()V

    return-void
.end method

.method private final zzn(Lcom/google/android/gms/internal/wj;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ws;->zzIV()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ws;->zzcia:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ws;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/wj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    const-string v1, ":("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ws;->zzchZ:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ws;->zzchX:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchX:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ws;->zzchZ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ws;->zzchZ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ws;->zzcia:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchX:Ljava/util/Stack;

    iget v1, p0, Lcom/google/android/gms/internal/ws;->zzchZ:I

    invoke-virtual {v0, v1, p1}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final zzIT()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ws;->zzchW:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public final zzIU()Lcom/google/android/gms/internal/qo;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ws;->zzchZ:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ws;->zzbY(I)Lcom/google/android/gms/internal/qo;

    move-result-object v0

    return-object v0
.end method
