## Base achievement had no alt groups before
Achievement used in this example : Toothpick - https://retroachievements.org/achievement/402916 \
For this kind of logic, the achievement has simply been split to 2 ALT groups and a check was added to detect the version on each :\
`0x010374 == 0x31333832` when playing German version (this address doesn't change in GER, no need for an offset).\
Other than that, it's only a matter of `AddAddress` with the correct offset.
### Base logic
#### Core Group
| ID | Flag | Type  | Size    | Memory      | Cmp  | Type   | Size      | Mem/Val     | Hits  |             
|----|------|-------|---------|-------------|------|--------|-----------|-------------|-------|             
| 1  | 		   | Mem   | 	32-bit | 	0x0a2a20   | 	=	  | Value  | 	  	      | 0x000000    | 	(0)  |
| 2  | 		   | Mem   | 	32-bit | 	0x0a3330   | 	=	  | Delta  | 	  32-bit | 	0x0a3330   | (0)   |	
| 3  | 	 	  | Mem   | 	8-bit  | 	 0x0a304c  | 	!=	 | Value  | 	  	      | 0x000001    | 	(0)  |
| 4  | 		   | Mem   | 	8-bit  | 	0x0a1740   | 	=	  | Value  | 	  	      | 0x000001    | 	(0)  |
| 5  | 		   | Mem   | 	8-bit  | 	0x0a1744   | 	=	  | Value  | 	  	      | 0x00000b    | 	(0)  |
| 6  | 		   | Delta | 	8-bit  | 	0x091ea0   | 	=	  | Value  | 	  	      | 0x000000    | 	(0)  |
| 7  | 		   | Mem   | 	8-bit  | 	0x091ea0   | 	=	  | Value  | 	  	      | 0x000001    | 	(0)  |

### New logic with German support
#### Core Group
Empty
#### Alt Group 1 (support EN/FR/DU/IT/ES versions)
| ID       | Flag | Type      | Size        | Memory        | Cmp      | Type        | Size       | Mem/Val          | Hits      |                  
|----------|------|-----------|-------------|---------------|----------|-------------|------------|------------------|-----------|                  
| **1**    | 		   | **Mem**   | 	**32-bit** | 	**0x010374** | 	**!=**	 | **Value**   | 	  	       | **0x31333832**   | 	**(0)**  |   
| 2        | 		   | Mem       | 	32-bit     | 	0x0a2a20     | 	=	      | Value       | 	  	       | 0x000000         | 	(0)      |   
| 3        | 		   | Mem       | 	32-bit     | 	0x0a3330     | 	=	      | Delta       | 	  32-bit  | 	0x0a3330        | (0)       |	 
| 4        | 	 	  | Mem       | 	8-bit      | 	 0x0a304c    | 	!=	     | Value       | 	  	       | 0x000001         | 	(0)      |   
| 5        | 		   | Mem       | 	8-bit      | 	0x0a1740     | 	=	      | Value       | 	  	       | 0x000001         | 	(0)      |   
| 6        | 		   | Mem       | 	8-bit      | 	0x0a1744     | 	=	      | Value       | 	  	       | 0x00000b         | 	(0)      |   
| 7        | 		   | Delta     | 	8-bit      | 	0x091ea0     | 	=	      | Value       | 	  	       | 0x000000         | 	(0)      |   
| 8        | 		   | Mem       | 	8-bit      | 	0x091ea0     | 	=	      | Value       | 	  	       | 0x000001         | 	(0)      |   

#### Alt Group 2 (support GER version)
| ID | Flag             | Type    | Size      | Memory        | Cmp  | Type      | Size      | Mem/Val      | Hits  |                  
|----|------------------|---------|-----------|---------------|------|-----------|-----------|--------------|-------|                  
| 1  | 	 	              | Mem     | 	32-bit   | 	0x010374     | 	= 	 | Value     | 	  	      | 0x31333832   | 	(0)  |
| 2  | Add Address  	 	 | Value   | 	         | 	0xfffffd18   | 	 	  |           | 	  	      |              |       |
| 3  | 		               | Mem     | 	32-bit   | 	0x0a2a20     | 	= 	 | Value     | 	  	      | 0x000000     | 	(0)  |
| 4  | Add Address 	 	  | Value   | 	         | 	0xfffffd14   | 	 	  |           | 	  	      |              |       |
| 5  | 		               | Mem     | 	32-bit   | 	0x0a3330     | 	=	  | Delta     | 	  32-bit | 	0x0a3330    | (0)   |
| 6  | Add Address 	 	  | Value   | 	         | 	0xfffffd14   | 	 	  |           | 	  	      |              |       |
| 7  | 	 	              | Mem     | 	8-bit    | 	 0x0a304c    | 	!=	 | Value     | 	  	      | 0x000001     | 	(0)  |
| 8  | Add Address 	 	  | Value   | 	         | 	0xfffffd18   | 	 	  |           | 	  	      |              |       |
| 9  | 		               | Mem     | 	8-bit    | 	0x0a1740     | 	=	  | Value     | 	  	      | 0x000001     | 	(0)  |
| 10 | Add Address 	 	  | Value   | 	         | 	0xfffffd18   | 	 	  |           | 	  	      |              |       |
| 11 | 		               | Mem     | 	8-bit    | 	0x0a1744     | 	=	  | Value     | 	  	      | 0x00000b     | 	(0)  |
| 12 | Add Address 	 	  | Value   | 	         | 	0xfffffd28   | 	 	  |           | 	  	      |              |       |
| 13 | 		               | Delta   | 	8-bit    | 	0x091ea0     | 	=	  | Value     | 	  	      | 0x000000     | 	(0)  |
| 14 | Add Address 	 	  | Value   | 	         | 	0xfffffd28   | 	 	  |           | 	  	      |              |       |
| 15 | 	 	              | Mem     | 	8-bit    | 	0x091ea0     | 	=	  | Value     | 	  	      | 0x000001     | 	(0)  |   

## Base achievement had alt groups before
Achievement used in this example : Gravedigger - https://retroachievements.org/achievement/404098 \
For this kind of logic, the achievement has been split to 2 ALT groups and a check was added to detect the version on each :\
`0x010374 == 0x31333832` when playing German version (this address doesn't change in GER, no need for an offset).\
Previous logic inside alt groups were merged inside the new `version alt groups` with `OrNext` logic.

### Base logic
#### Core Group
| ID  | Flag       | Type   | Size     | Memory    | Cmp | Type    | Size    | Mem/Val    | Hits    |             
|-----|------------|--------|----------|-----------|-----|---------|---------|------------|---------|             
| 1 	 | 	| Mem  	 | 32-bit   | 	0x0a2a20  | 	=  | 	Value  | 		      | 0x000000	  | (0)     |
| 2 	 | 	| Mem	   | 32-bit   | 	0x0a3330  | 	=  | 	Delta  | 	32-bit | 	0x0a3330  | 	(0)    |
| 3	  | | 	Mem	  | 8-bit    | 	0x0a304c  | 	!= | 	Value  | 		      | 0x000001	  | (0)     |
| 4	  | | 	Mem	  | 8-bit    | 	0x0a1740  | 	=  | 	Value  | 		      | 0x000002	  | (0)     |
| 5	  | Add Hits	  | Mem	   | 32-bit   | 	0x0b71e8 | 	=	 | Value   | 		      | 0x003145   | 	(1)    |
| 6	  | Add Hits	  | Mem	   | 32-bit   | 	0x0b71e8 | 	=	 | Value   | 		      | 0x003245   | 	(1)    |
| 7	  | Add Hits	  | Mem	   | 32-bit   | 	0x0b71e8 | 	=	 | Value   | 		      | 0x003345   | 	(1)    |
| 8	  | Add Hits	  | Mem	   | 32-bit   | 	0x0b71e8 | 	=	 | Value   | 		      | 0x003445   | 	(1)    |
| 9	  | Add Hits 	 | Mem	   | 32-bit   | 	0x0b71e8 | 	=	 | Value   | 		      | 0x003545   | 	(1)    |
| 10	 | Add Hits	  | Mem	   | 32-bit   | 	0x0b71e8 | 	=	 | Value   | 		      | 0x003645   | 	(1)    |
| 11	 | Add Hits	  | Mem	   | 32-bit   | 	0x0b71e8 | 	=	 | Value   | 		      | 0x003745   | 	(1)    |
| 12	 | Add Hits	  | Mem	   | 32-bit   | 	0x0b71e8 | 	=	 | Value   | 		      | 0x003845   | 	(1)    |
| 13	 | Add Hits	  | Mem	   | 32-bit   | 	0x0b71e8 | 	=	 | Value   | 		      | 0x003945   | 	(1)    |
| 14	 | Measured	  | Value	 |          | 	0x000000 | 	=	 | Value 	 | 	       | 0x000001 	 | (9)     |

#### Alt Group 1
| ID | Flag | Type | Size     | Memory     | Cmp | Type    | Size | Mem/Val    
|----|------|------|----------|------------|-----|---------|------|------------
| 1  | 	 	  | Mem  | 	8-bit 	 | 0x0a1744 	 |  =  | 	Value  | 	 	  | 0x000009   |  	 | (0)   |

#### Alt Group 2
| ID | Flag            | Type   | Size      | Memory     | Cmp | Type    | Size | Mem/Val  
|----|-----------------|--------|-----------|------------|-----|---------|------|----------
| 1  | 	 	  | Mem  | 	8-bit 	 | 0x0a1744 	 |  =  | 	Value  | 	 	  | 0x00000d |  	 | (0)   |

### New logic with German support
#### Core Group
Empty

#### Alt Group 1
| ID    | Flag        | Type   | Size     | Memory        | Cmp | Type    | Size    | Mem/Val        | Hits    |             
|-------|-------------|--------|----------|---------------|-----|---------|---------|----------------|---------|             
| **1** | 		          | **Mem**   | 	**32-bit** | 	**0x010374** | 	**!=**	 | **Value**   | 	  	    | **0x31333832** | 	**(0)**  |   
| 2 	   | 	           | Mem  	 | 32-bit   | 	0x0a2a20     | 	=  | 	Value  | 		      | 0x000000	      | (0)     |
| 3 	   | 	           | Mem	   | 32-bit   | 	0x0a3330     | 	=  | 	Delta  | 	32-bit | 	0x0a3330      | 	(0)    |
| 4	    |             | 	Mem	  | 8-bit    | 	0x0a304c     | 	!= | 	Value  | 		      | 0x000001	      | (0)     |
| 5	    |             | 	Mem	  | 8-bit    | 	0x0a1740     | 	=  | 	Value  | 		      | 0x000002	      | (0)     |
| **6**	    | **Or Next** | 	**Mem**	  | **8-bit**    | 	**0x0a1744**     | 	**=**  | 	**Value**  | 		      | **0x000009**	      | **(0)**     |
| **7**	    |             | 	**Mem**	  | **8-bit**    | 	**0x0a1744**     | 	**=**  | 	**Value**  | 		      | **0x00000d**	      | **(0)**     |
| 8	    | Add Hits	   | Mem	   | 32-bit   | 	0x0b71e8     | 	=	 | Value   | 		      | 0x003145       | 	(1)    |
| 9	    | Add Hits	   | Mem	   | 32-bit   | 	0x0b71e8     | 	=	 | Value   | 		      | 0x003245       | 	(1)    |
| 10	   | Add Hits	   | Mem	   | 32-bit   | 	0x0b71e8     | 	=	 | Value   | 		      | 0x003345       | 	(1)    |
| 11	   | Add Hits	   | Mem	   | 32-bit   | 	0x0b71e8     | 	=	 | Value   | 		      | 0x003445       | 	(1)    |
| 12	   | Add Hits 	  | Mem	   | 32-bit   | 	0x0b71e8     | 	=	 | Value   | 		      | 0x003545       | 	(1)    |
| 13	   | Add Hits	   | Mem	   | 32-bit   | 	0x0b71e8     | 	=	 | Value   | 		      | 0x003645       | 	(1)    |
| 14	   | Add Hits	   | Mem	   | 32-bit   | 	0x0b71e8     | 	=	 | Value   | 		      | 0x003745       | 	(1)    |
| 15	   | Add Hits	   | Mem	   | 32-bit   | 	0x0b71e8     | 	=	 | Value   | 		      | 0x003845       | 	(1)    |
| 16	   | Add Hits	   | Mem	   | 32-bit   | 	0x0b71e8     | 	=	 | Value   | 		      | 0x003945       | 	(1)    |
| 17	   | Measured	   | Value	 |          | 	0x000000     | 	=	 | Value 	 | 	       | 0x000001 	     | (9)     |

#### Alt Group 2
| ID  | Flag       | Type   | Size      | Memory      | Cmp    | Type    | Size     | Mem/Val    | Hits   |             
|-----|------------|--------|-----------|-------------|--------|---------|----------|------------|--------|             
| 1   | 		         | Mem    | 	32-bit   | 	0x010374   | 	=	   |  Value  | 	  	     | 0x31333832 | 	(0)   |   
| 2   | Add Address  	 	 | Value   | 	         | 	0xfffffd18 | 	 	  |           | 	  	      |              |       |
| 3 	 | 	          | Mem  	 | 32-bit    | 	0x0a2a20   | 	=     | 	Value  | 		       | 0x000000	  | (0)    |
| 4   | Add Address  	 	 | Value   | 	         | 	0xfffffd14 | 	 	  |           | 	  	      |              |       |
| 5 	 | 	          | Mem	   | 32-bit    | 	0x0a3330   | 	=     | 	Delta  | 	32-bit  |  	0x0a3330 | 	(0)   |
| 6   | Add Address  	 	 | Value   | 	         | 	0xfffffd14 | 	 	  |           | 	  	      |              |       |
| 7	  |            | 	Mem	  | 8-bit     | 	0x0a304c   | 	!=    | 	Value  | 		       | 0x000001	  | (0)    |
| 8   | Add Address  	 	 | Value   | 	         | 	0xfffffd18 | 	 	  |           | 	  	      |              |       |
| 9	  |            | 	Mem	  | 8-bit     | 	0x0a1740   | 	=     | 	Value  | 		       | 0x000002	  | (0)    |
| 10  | Add Address  	 	 | Value   | 	         | 	0xfffffd18 | 	 	  |           | 	  	      |              |       |
| 11	 | Or Next    | 	Mem	  | 8-bit     | 	0x0a1744   | 	=     | 	Value  | 		       | 0x000009	  | (0)    |
| 12  | Add Address  	 	 | Value   | 	         | 	0xfffffd18 | 	 	  |           | 	  	      |              |       |
| 13	 |            | 	Mem	  | 8-bit     | 0x0a1744    | 	=     | 	Value  | 		       | 0x00000d	  | (0)    |
| 14  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 15	 | Add Hits	  | Mem	   | 32-bit    | 	0x0b71e8   | 	=	    | Value   | 		       | 0x003145   | 	(1)   |
| 16  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 17	 | Add Hits	  | Mem	   | 32-bit    | 	0x0b71e8   | 	=	    | Value   | 		       | 0x003245   | 	(1)   |
| 18  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 19	 | Add Hits	  | Mem	   | 32-bit    | 	0x0b71e8   | 	=	    | Value   | 		       | 0x003345   | 	(1)   |
| 20  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 21	 | Add Hits	  | Mem	   | 32-bit    | 	0x0b71e8   | 	=	    | Value   | 		       | 0x003445   | 	(1)   |
| 22  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 23	 | Add Hits 	 | Mem	   | 32-bit    | 	0x0b71e8   | 	=	    | Value   | 		       | 0x003545   | 	(1)   |
| 24  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 25	 | Add Hits	  | Mem	   | 32-bit    | 	0x0b71e8   | 	=	    | Value   | 		       | 0x003645   | 	(1)   |
| 26  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 27	 | Add Hits	  | Mem	   | 32-bit    | 	0x0b71e8   | 	=	    | Value   | 		       | 0x003745   | 	(1)   |
| 28  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 29	 | Add Hits	  | Mem	   | 32-bit    | 	0x0b71e8   | 	=	    | Value   | 		       | 0x003845   | 	(1)   |
| 30  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 31	 | Add Hits	  | Mem	   | 32-bit    | 	0x0b71e8   | 	=	    | Value   | 		       | 0x003945   | 	(1)   |
| 32	 | Measured	  | Value	 |           | 	0x000000   | 	=	    | Value 	 | 	        | 0x000001 	 | (9)    |

## Base achievement had alt groups before for reset-if
Achievement used in this example : Mouse Trap - https://retroachievements.org/achievement/404047 \
For this kind of logic, the achievement has been split to 4 ALT groups and a check was added to detect the version on each :\
`0x010374 == 0x31333832` when playing German version (this address doesn't change in GER, no need for an offset).\
An `always-false` condition has been added to the two alt groups with `reset-if` logic.   

**Alt group 1** : contains the logic for EN/FR/IT/ES/DU   
**Alt group 2** : contains the logic for GER \
**Alt group 3** : contains the `reset if` logic for EN/FR/IT/ES/DU \
**Alt group 4** : contains the `reset if` logic for GER

Other than that, it's only a matter of `AddAddress` with the correct offset.

### Base logic
#### Core Group
| ID | Flag            | Type   | Size      | Memory     | Cmp   | Type    | Size       | Mem/Val   | Hits  |             
|----|-----------------|--------|-----------|------------|-------|---------|------------|-----------|-------|             
| 1  | 	     	         | Mem    | 	32-bit 	 | 0x0a2a20   | 	 =	  | Value   | 		0x000000 | 	(0)      |
| 2  | 	    	          | Mem    | 	32-bit	  | 0x0a3330   | 	=	   | Delta   | 	32-bit    | 	0x0a3330 |	(0) |
| 3  | 	    	          | Mem    | 	8-bit	   | 0x0a304c   | 	!=	  | Value   | 		0x000001 | 	(0)      |
| 4  | 	    	          | Mem    | 	8-bit	   | 0x0a1740   | 	=	   | Value   | 		0x000001 | 	(0)      |
| 5  | 	    	          | Mem    | 	8-bit	   | 0x0a1744   | 	=	   | Value   | 		0x00000b | 	(0)      |
| 6  | 	    	          | Mem    | 	8-bit	   | 0x0a0610   | 	=	   | Value   | 		0x000001 | 	(0)      |
| 7  | 	     Trigger	  | Mem    | 	16-bit   | 	0x0a4324  | 	=	   | Value		 | 0x000000	  | (0)       |
| 8  | 	    Trigger	   | Delta  | 	16-bit	  | 0x0a4324 	 | !=	   | Value		 | 0x000000	  | (0)       |
| 9  | 	    And Next   | 	Mem   | 	8-bit    | 	0x0a0610  | 	=	   | Value		 | 0x000001	  | (0)       |
| 10 | 	Pause If       | 	Mem	  | 8-bit     | 	0x1c3a24  | 	=	   | Value		 | 0x00000d	  | (1)       |
#### Alt Group 1
| ID | Flag            | Type   | Size      | Memory     | Cmp | Type    | Size | Mem/Val   | Hits  |       
|----|-----------------|--------|-----------|------------|-----|---------|------|-----------|-------|       
|1	|And Next|	Mem	 |8-bit	|0x0a1740	| =	  | Value	  |      | 	0x000001 | 	(0)  |
|2	|And Next|	Mem	 |8-bit	|0x0a1744	| =	  | Value	  |      | 	0x00000b | 	 (0) |
|3	|And Next|	Delta |	8-bit|	0x0a0610| = 	 | 	Value  |      | 0x000000  | (0)   |
|4	|Reset If|	Mem	 |8-bit	|0x0a0610	| =	  | Value	  |      | 	0x000001 | 	(0)  |

### New logic with German support
#### Core Group
Empty

#### Alt Group 1
| ID    | Flag            | Type   | Size      | Memory     | Cmp   | Type    | Size       | Mem/Val   | Hits  |             
|-------|-----------------|--------|-----------|------------|-------|---------|------------|-----------|-------| 
| **1** | 		   | **Mem**   | 	**32-bit** | 	**0x010374** | 	**!=**	 | **Value**   | 	  	       | **0x31333832**   | 	**(0)**  |   
| 2     | 	     	         | Mem    | 	32-bit 	 | 0x0a2a20   | 	 =	  | Value   | 		0x000000 | 	(0)      |
| 3     | 	    	          | Mem    | 	32-bit	  | 0x0a3330   | 	=	   | Delta   | 	32-bit    | 	0x0a3330 |	(0) |
| 4     | 	    	          | Mem    | 	8-bit	   | 0x0a304c   | 	!=	  | Value   | 		0x000001 | 	(0)      |
| 5     | 	    	          | Mem    | 	8-bit	   | 0x0a1740   | 	=	   | Value   | 		0x000001 | 	(0)      |
| 6     | 	    	          | Mem    | 	8-bit	   | 0x0a1744   | 	=	   | Value   | 		0x00000b | 	(0)      |
| 7     | 	    	          | Mem    | 	8-bit	   | 0x0a0610   | 	=	   | Value   | 		0x000001 | 	(0)      |
| 8     | 	     Trigger	  | Mem    | 	16-bit   | 	0x0a4324  | 	=	   | Value		 | 0x000000	  | (0)       |
| 9     | 	    Trigger	   | Delta  | 	16-bit	  | 0x0a4324 	 | !=	   | Value		 | 0x000000	  | (0)       |
| 10    | 	    And Next   | 	Mem   | 	8-bit    | 	0x0a0610  | 	=	   | Value		 | 0x000001	  | (0)       |
| 11    | 	Pause If       | 	Mem	  | 8-bit     | 	0x1c3a24  | 	=	   | Value		 | 0x00000d	  | (1)       |
#### Alt Group 2
| ID    | Flag            | Type   | Size      | Memory      | Cmp   | Type    | Size       | Mem/Val   | Hits  |             
|-------|-----------------|--------|-----------|-------------|-------|---------|------------|-----------|-------| 
| 1  | 	 	              | Mem     | 	32-bit   | 	0x010374   | 	= 	 | Value     | 	  	      | 0x31333832   | 	(0)  |
| 2  | Add Address  	 	 | Value   | 	         | 	0xfffffd18 | 	 	  |           | 	  	      |              |       |
| 2     | 	     	         | Mem    | 	32-bit 	 | 0x0a2a20    | 	 =	  | Value   | 		0x000000 | 	(0)      |
| 2  | Add Address  	 	 | Value   | 	         | 	0xfffffd14 | 	 	  |           | 	  	      |              |       |
| 3     | 	    	          | Mem    | 	32-bit	  | 0x0a3330    | 	=	   | Delta   | 	32-bit    | 	0x0a3330 |	(0) |
| 2  | Add Address  	 	 | Value   | 	         | 	0xfffffd14 | 	 	  |           | 	  	      |              |       |
| 4     | 	    	          | Mem    | 	8-bit	   | 0x0a304c    | 	!=	  | Value   | 		0x000001 | 	(0)      |
| 2  | Add Address  	 	 | Value   | 	         | 	0xfffffd18 | 	 	  |           | 	  	      |              |       |
| 5     | 	    	          | Mem    | 	8-bit	   | 0x0a1740    | 	=	   | Value   | 		0x000001 | 	(0)      |
| 2  | Add Address  	 	 | Value   | 	         | 	0xfffffd18 | 	 	  |           | 	  	      |              |       |
| 6     | 	    	          | Mem    | 	8-bit	   | 0x0a1744    | 	=	   | Value   | 		0x00000b | 	(0)      |
| 2  | Add Address  	 	 | Value   | 	         | 	0xfffffd18 | 	 	  |           | 	  	      |              |       |
| 7     | 	    	          | Mem    | 	8-bit	   | 0x0a0610    | 	=	   | Value   | 		0x000001 | 	(0)      |
| 2  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 8     | 	     Trigger	  | Mem    | 	16-bit   | 	0x0a4324   | 	=	   | Value		 | 0x000000	  | (0)       |
| 2  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 9     | 	    Trigger	   | Delta  | 	16-bit	  | 0x0a4324 	  | !=	   | Value		 | 0x000000	  | (0)       |
| 2  | Add Address  	 	 | Value   | 	         | 	0xfffffd18 | 	 	  |           | 	  	      |              |       |
| 10    | 	    And Next   | 	Mem   | 	8-bit    | 	0x0a0610   | 	=	   | Value		 | 0x000001	  | (0)       |
| 2  | Add Address  	 	 | Value   | 	         | 	0xfffffd08 | 	 	  |           | 	  	      |              |       |
| 11    | 	Pause If       | 	Mem	  | 8-bit     | 	0x1c3a24   | 	=	   | Value		 | 0x00000d	  | (1)       |
#### Alt Group 3
| ID    | Flag       | Type   | Size        | Memory        | Cmp       | Type      | Size | Mem/Val        | Hits     |       
|-------|------------|--------|-------------|---------------|-----------|-----------|------|----------------|----------|       
| **1** | 	And Next	 | **Mem**   | 	**32-bit** | 	**0x010374** | 	**!=**	  | **Value** | 	  	 | **0x31333832** | 	**(0)** |   
| 2 	   | And Next   |	Mem	 | 8-bit	      | 0x0a1740	     | =	        | Value	    |      | 	0x000001      | 	(0)     |
| 3 	   | And Next   |	Mem	 | 8-bit	      | 0x0a1744	     | =	        | Value	    |      | 	0x00000b      | 	 (0)    |
| 4 	   | And Next   |	Delta | 	8-bit      | 	0x0a0610     | =  	      | 	Value    |      | 0x000000       | (0)      |
| 5 	   | Reset If   |	Mem	 | 8-bit	      | 0x0a0610	     | =	        | Value	    |      | 	0x000001      | 	(0)     |
| **6** 	   |            | 	**Value**	  |             | **0x0** 	         | **=**	        | **Value**	    |      | 	**0x01**          | 	**(0)**     |
#### Alt Group 4
| ID  | Flag             | Type     | Size    | Memory      | Cmp  | Type    | Size  | Mem/Val    | Hits  |       
|-----|------------------|----------|---------|-------------|------|---------|-------|------------|-------|       
| 1   | 	And Next  	     | Mem      | 	32-bit | 	0x010374   | 	= 	 | Value   | 	  	  | 0x31333832 | 	(0)  |
| 2   | Add Address  	 	 | Value    | 	       | 	0xfffffd18 | 	 	  |         | 	   	 |            |       |
| 3	  | And Next         | 	Mem	    | 8-bit	  | 0x0a1740	   | =	   | Value	  |       | 	0x000001  | 	(0)  |
| 4   | Add Address  	 	 | Value    | 	       | 	0xfffffd18 | 	 	  |         | 	  	  |            |       |
| 5	  | And Next         | 	Mem	    | 8-bit	  | 0x0a1744	   | =	   | Value	  |       | 	0x00000b  | 	 (0) |
| 6   | Add Address  	 	 | Value    | 	       | 	0xfffffd18 | 	 	  |         | 	  	  |            |       |
| 7	  | And Next         | 	Delta   | 	8-bit  | 	0x0a0610   | = 	  | 	Value  |       | 0x000000   | (0)   |
| 8   | Add Address  	 	 | Value    | 	       | 	0xfffffd18 | 	 	  |         | 	  	  |            |       |
| 9	  | Reset If         | 	Mem	    | 8-bit	  | 0x0a0610	   | =	   | Value	  |       | 	0x000001  | 	(0)  |
| 10	 |                  | 	Value	  |         | 0x0	        | =	   | Value	  |       | 	0x01      | 	(0)  |