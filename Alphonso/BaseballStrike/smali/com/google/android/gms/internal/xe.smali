.class public final Lcom/google/android/gms/internal/xe;
.super Ljava/lang/Object;


# static fields
.field private static final zzcir:Lcom/google/android/gms/internal/xe;

.field private static final zzcis:Lcom/google/android/gms/internal/xe;


# instance fields
.field private final zzcgy:Lcom/google/android/gms/internal/wj;

.field private final zzcij:Lcom/google/android/gms/internal/xf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/xe;

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzIH()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/wx;->zzIZ()Lcom/google/android/gms/internal/wx;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    sput-object v0, Lcom/google/android/gms/internal/xe;->zzcir:Lcom/google/android/gms/internal/xe;

    new-instance v0, Lcom/google/android/gms/internal/xe;

    invoke-static {}, Lcom/google/android/gms/internal/wj;->zzII()Lcom/google/android/gms/internal/wj;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/xf;->zzcit:Lcom/google/android/gms/internal/wl;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xe;-><init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V

    sput-object v0, Lcom/google/android/gms/internal/xe;->zzcis:Lcom/google/android/gms/internal/xe;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/wj;Lcom/google/android/gms/internal/xf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/xe;->zzcgy:Lcom/google/android/gms/internal/wj;

    iput-object p2, p0, Lcom/google/android/gms/internal/xe;->zzcij:Lcom/google/android/gms/internal/xf;

    return-void
.end method

.method public static zzJg()Lcom/google/android/gms/internal/xe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xe;->zzcir:Lcom/google/android/gms/internal/xe;

    return-object v0
.end method

.method public static zzJh()Lcom/google/android/gms/internal/xe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xe;->zzcis:Lcom/google/android/gms/internal/xe;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/xe;

    iget-object v2, p0, Lcom/google/android/gms/internal/xe;->zzcgy:Lcom/google/android/gms/internal/wj;

    iget-object v3, p1, Lcom/google/android/gms/internal/xe;->zzcgy:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/wj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/xe;->zzcij:Lcom/google/android/gms/internal/xf;

    iget-object v3, p1, Lcom/google/android/gms/internal/xe;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/xe;->zzcgy:Lcom/google/android/gms/internal/wj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wj;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/xe;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/xe;->zzcgy:Lcom/google/android/gms/internal/wj;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xe;->zzcij:Lcom/google/android/gms/internal/xf;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "NamedNode{name="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", node="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzFm()Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xe;->zzcij:Lcom/google/android/gms/internal/xf;

    return-object v0
.end method

.method public final zzJi()Lcom/google/android/gms/internal/wj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xe;->zzcgy:Lcom/google/android/gms/internal/wj;

    return-object v0
.end method
