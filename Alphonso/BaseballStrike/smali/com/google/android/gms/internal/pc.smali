.class final Lcom/google/android/gms/internal/pc;
.super Ljava/lang/Object;


# instance fields
.field private zzcbE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzcbF:Z

.field private zzcby:Ljava/lang/String;

.field private zzcbz:Lcom/google/android/gms/internal/pe;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/pe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/pe;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pc;->zzcby:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/pc;->zzcbE:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/pc;->zzcbz:Lcom/google/android/gms/internal/pe;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/pe;Lcom/google/android/gms/internal/op;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/pc;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/pe;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/pc;)Lcom/google/android/gms/internal/pe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pc;->zzcbz:Lcom/google/android/gms/internal/pe;

    return-object v0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pc;->zzcby:Ljava/lang/String;

    return-object v0
.end method

.method public final zzGk()Lcom/google/android/gms/internal/pe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pc;->zzcbz:Lcom/google/android/gms/internal/pe;

    return-object v0
.end method

.method public final zzGo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pc;->zzcbE:Ljava/util/Map;

    return-object v0
.end method

.method public final zzGp()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pc;->zzcbF:Z

    return-void
.end method

.method public final zzGq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pc;->zzcbF:Z

    return v0
.end method
